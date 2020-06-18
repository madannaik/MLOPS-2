# MLOPS-CI/CD JENKINS PIPELINE FOR WEB HOSTING
***

### INITIAL SETUP TO BE MADE 
1. LINUX OS installed either on bare metal/VM/cloud instance .[recommended redhat linux]
2. Docker installed on linux
3. patting enabled in linux
4. openssh-server installed in linux

***
### Create a docker image using the dockerfile given in the repository
1. start docker using 
           
       - systemctl start docker]]
2. go into directory where Dockerfile is downloaded and type into terminal
           
       - docker build -t your_image_name:version . 
##### your images named "your_image_name" with version "version" will we created inside docker



