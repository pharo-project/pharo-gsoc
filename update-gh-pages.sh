#!/bin/bash
set -o nounset
set -o errexit

readonly USER=pharo-project
readonly REPO=pharo-project-proposals

setup-git() {
	cd $HOME
	git config --global user.email "travis@travis-ci.org"
	git config --global user.name "Travis"
}


deploy() {
	git clone --quiet --branch=gh-pages "git@github.com:$USER/$REPO.git" gh-pages > /dev/null
	cd gh-pages
	cp $SMALLTALK_CI_BUILD/Topics.html index.html
	cp $SMALLTALK_CI_BUILD/Topics.md .
	git add .
	git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages"
	git push -fq origin gh-pages > /dev/null
}

main() {
	setup-git
	deploy
}

if [[ "$TRAVIS_BRANCH" == "master" ]] && [[ "$TRAVIS_PULL_REQUEST" == "false" ]]; then
	main
fi
