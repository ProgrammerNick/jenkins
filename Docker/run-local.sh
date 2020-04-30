source .env

docker run \
  --rm \
  -p 8080:8080 \
  -e GH_PAT=${GH_PAT} \
  -e GH_CLIENT_SECRET=${GH_CLIENT_SECRET} \
  -e GH_CLIENT_ID=${GH_CLIENT_ID} \
  nick/jenkins
