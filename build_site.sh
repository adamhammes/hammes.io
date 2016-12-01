DIR=$(mktemp -d)
git clone https://github.com/adamhammes/hammes.io $DIR
cd $DIR
hugo
cp -r public /home/adam/site
rm -rf $DIR
