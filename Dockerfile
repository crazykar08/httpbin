FROM centos:latest
MAINTAINER kartik.kaari.kp@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/den.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip den.zip
RUN cp -rvf den/* .
RUN rm -rf __MACOSX den.zip den
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
