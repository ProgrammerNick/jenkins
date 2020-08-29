Y="\033[1;33m"
W="\033[1;37m"

echo -e "${Y}### Stage: build image${W}"

docker build . -t nick/jenkins

echo -e "${Y}### Stage: import env vars${W}"

source .env

echo -e "${Y}### Stage: run container${W}"

docker run \
  --rm \
  -p 8080:8080 \
  -e GH_PAT="${GH_PAT}" \
  -e GH_CLIENT_SECRET="${GH_CLIENT_SECRET}" \
  -e GH_CLIENT_ID="${GH_CLIENT_ID}" \
  -e AWS_AGENT_KEY="${AWS_AGENT_KEY}" \
  -e AWS_ACCESS_KEY="${AWS_ACCESS_KEY}" \
  -e AWS_SECRET_KEY="${AWS_SECRET_KEY}" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  nick/jenkins
