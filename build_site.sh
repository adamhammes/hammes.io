DIR=$(mktemp -d)
git clone https://github.com/adamhammes/hammes.io $DIR
cd $DIR
hugo --destination /home/adam/site
rm -rf $DIR
