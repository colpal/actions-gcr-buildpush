if [ $(git log -1 --pretty=%B | grep -e "^\[MAJOR\]") ] ;then
echo "MAJOR"
fi