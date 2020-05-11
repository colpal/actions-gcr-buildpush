version_number(){
  message=$(git log -1 --pretty=%B | head -n 1 | grep -e "^\[MAJOR\]" || true)
  if [ ! -z "$message" ] ;then
    echo "Major update detected."
    update_type="major"
  elif [ ! -z "$message" ] ;then
    echo "Minor upate detected."
    update_type="minor"
  elif [ ! -z "$message" ] ;then
    echo "Patch update detected."
    update_type="patch"
  else
    echo "No version update detected."
  return
  fi
}
version_number
echo "LLL"