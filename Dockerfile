FROM redhat/ubi8
MAINTAINER Your Name <youremail>
LABEL description="A basic Apache container on RHEL 8 UBI"
RUN yum install -y httpd curl  && \
         yum clean all
RUN echo "Hello from Onmobile web site" > /usr/share/httpd/noindex/index.html
EXPOSE 80
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
