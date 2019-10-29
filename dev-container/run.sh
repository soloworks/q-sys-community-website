docker image build \
  --tag q-sys-community-website-dev \
  --file ./dev-container/Dockerfile \
  .
docker container run \
  --name=q-sys-community-website-dev \
  --rm \
  --interactive \
  --tty \
  --volume "$(pwd)":/app \
  --publish 8080:8080 \
  q-sys-community-website-dev
