FROM centos:latest
MAINTAINER kartik.kaari.kp@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/adio.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip adio.zip
RUN cp -rvf adio/* .
RUN rm -rf __MACOSX adio.zip adio
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
