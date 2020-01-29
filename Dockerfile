FROM ubuntu:18.04

RUN apt update
RUN apt install ssh -y
RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
