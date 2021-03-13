FROM centos:latest
MAINTAINER kartik.kaari.kp@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/mind.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip mind.zip
RUN cp -rvf mind/* .
RUN rm -rf __MACOSX mind.zip mind
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
