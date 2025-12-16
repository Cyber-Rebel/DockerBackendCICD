# Build  the Docker image 
# push the image to Docker Hub
#  braches:[main, dev]
 #  uses: actions/checkout@v3  -- checkout the codebase on ubuntu-latest
 # uses: actions/checkout@v3  --> ye cmd kya karega clone you code base  on ubuntu-latest machine 
#  uses: docker/login-action@v2  --> ye cmd kya karega docker hub pr login krne k liye 

# username: ${{ secrets.DOCKER_HUB_USERNAME }} its variable pineline stored in github secrets 
# Go to repo setting --> secrets and variables --> actions --> new repository secret --> New Secret Name is fell for docker hub username
# password: ${{ secrets.DOCKER_HUB_ACCESS_TOKEN }} its variable pineline stored
# why save in action secrets because we dont want to expose our credentials in codebase
# context: Path: .github/workflows/cd_Backend.yml
# context mean 
# file location jaha se docker image build krna hai
# file: ./Dockerfile  --> dockerfile location
# there multiple dockerfile ho skte hai project me to specify krna pdta hai konsa dockerfile use krna hai
# push: true  --> ye cmd kya karega docker image push krdega docker hub pr
# tags: your_dockerhub_username/your_repository_name:latest  --> docker image ka
#  docker image by default latest create but file identify krne k liye hum github.sha use krte hai
# github.sha ye unique id hota hai har commit ka jisse hum identify krte hai konsa commit pr humara docker image build hua hai
# tags: DockerBackendCICD/backend:${{ github.sha }}  --> docker image ka name and tag 
# That work like a versioning system for your docker images
# constext mean jaha se docker image build krna hai 
# pust true matalb docker hub pr push krna hai