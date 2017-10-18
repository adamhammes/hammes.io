#1/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

if [ -n "$(git status --porcelain --ignore-submodules=dirty)" ]; then
    printf "${RED}Uncommited changes - aborting.\n${NC}"
    exit 1
fi

hugo

# Add changes to git
cd public

msg="Site update on `date`"
if [ $# -eq 1 ]; then
    msg="$1"
fi

git add -A
git commit -am "$msg"
git push origin master

printf "${GREEN}Site successfully updated.\n${NC}"
