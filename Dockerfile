FROM centos:centos7

ADD https://storage.googleapis.com/kubernetes-release/release/v1.6.0/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

ADD run.sh /run.sh


RUN chmod +x /run.sh

CMD ["/run.sh"]
