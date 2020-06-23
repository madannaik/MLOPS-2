FROM centos
RUN dnf install wget -y
RUN yum install sed -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install jenkins -y
RUN yum install java-11-openjdk.x86_64 -y
RUN yum install net-tools -y 
RUN yum makecache && yum install initscripts -y 
RUN yum install sudo -y 
RUN sed -i  "101i jenkins ALL=(ALL) NOPASSWD: ALL" /etc/sudoers
RUN echo "/etc/rc.d/init.d/jenkins start" > /root/.bashrc
EXPOSE 8080

	

