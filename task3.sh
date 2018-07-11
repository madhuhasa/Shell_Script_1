wget --user jenkins --password redhat http://18.219.209.240/tmanserver_BUILD_1234.zip #downloading
unzip tmanserver_BUILD_1234.zip #unzipping
content=$(cat tmanserver_BUILD_1234/bin/*.txt)
echo "$content"
if [[ tmanserver_BUILD_1234 = *"$content"* ]]; then
  echo "Same build files"
else
 echo "Different build files"
fi
