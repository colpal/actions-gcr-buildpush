if [ $(git log -1 --pretty=%B | grep -e "^\[MAJOR\]") ] ;then
echo "MAJOR"
elif [ $(git log -1 --pretty=%B | grep -e "^\[MINOR\]") ] ;then
echo "MINOR"
if [ $(git log -1 --pretty=%B | grep -e "^\[PATCH\]") ] ;then
echo "PATCH"
fi