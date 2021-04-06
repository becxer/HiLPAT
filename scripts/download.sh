file_id="1bSjxbKSxp1qEBCSwAmk8YlkRl1ztgrWO"
file_name="tvc_feature_release.tar.gz"
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${file_id}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${file_id}" -o ${file_name}
