if [ $(git log -1 --pretty=%B | grep [MAJOR]) ] ;then
echo "MAJOR"
fi