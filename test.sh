if [ ! -z "$(git log -1 --pretty=%B | head -n 1 | grep -e "^\[MAJOR\]" || true)" ] ;then
echo "MAJOR"
elif [ ! -z "$(git log -1 --pretty=%B | head -n 1 | grep -e "^\[MINOR\]" || true)" ] ;then
echo "MINOR"
elif [ ! -z "$(git log -1 --pretty=%B | head -n 1 | grep -e "^\[PATCH\]" || true)" ] ;then
echo "PATCH"
else
echo "No version update detected."
fi