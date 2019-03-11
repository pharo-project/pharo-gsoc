openssl aes-256-cbc -K $encrypted_3e5b803eac60_key -iv $encrypted_3e5b803eac60_iv -in .ssh/id_pharo-project-proposals-gh-pages.enc -out .ssh/id_pharo-project-proposals-gh-pages -d
chmod 0400 .ssh/id_pharo-project-proposals-gh-pages
eval $(ssh-agent -s)
ssh-add .ssh/id_pharo-project-proposals-gh-pages
rm -f .ssh/id_pharo-project-proposals-gh-pages
