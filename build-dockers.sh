echo "Keeping it tidy."
docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')
echo "Building docker"
docker build -f dockers/base/dockerfile-base . -t appsecpipeline/base
docker build -f dockers/base/dockerfile-base-tools . -t appsecpipeline/base-tools