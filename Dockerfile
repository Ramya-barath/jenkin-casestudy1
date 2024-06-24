FROM httpd:2.4
RUN apt-get update
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip
RUN apt-get install unzip -y
RUN unzip oxer.zip
RUN cp -r oxe-html/ /usr/local/apache2/htdocs/
RUN rm -rf oxer.zip oxer-html
EXPOSE 80
CMD ["httpd-foreground"]
