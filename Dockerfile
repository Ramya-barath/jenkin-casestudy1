FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2 wget unzip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip
RUN apt-get install unzip -y
RUN unzip oxer.zip
COPY oxer-html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
