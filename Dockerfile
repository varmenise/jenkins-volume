# Dockerfile
FROM debian:jessie
# Create Jenkins user
RUN useradd jenkins
RUN echo "jenkins:jenkins" | chpasswd
RUN mkdir -p /mnt/var/lib/jenkins
RUN chown -R jenkins:jenkins /mnt/var/lib/jenkins
VOLUME /mnt/var/lib/jenkins 
CMD ["/bin/bash"]
