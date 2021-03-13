FROM centos:latest
MAINTAINER kartik.kaari.kp@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/lion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip lion.zip
RUN cp -rvf lion/* .
RUN rm -rf __MACOSX lion.zip lion
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
