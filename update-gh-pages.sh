#!/bin/bash

set -euo pipefail

setup-git() {
	cd $HOME
	git config --global user.email "travis@travis-ci.org"
	git config --global user.name "Travis"
}


deploy() {
	local user=pharo-project
	local repo=pharo-project-proposals

	git clone --quiet --branch=gh-pages "git@github.com:$user/$repo.git" gh-pages > /dev/null
	pushd gh-pages >/dev/null
	cp $TRAVIS_BUILD_DIR/Topics.html index.html
	cp $TRAVIS_BUILD_DIR/style.css style.css
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
