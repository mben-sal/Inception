FROM debian:bullseye

RUN apt-get -y update && apt-get -y install nginx openssl
RUN openssl req -x509 -nodes -days 365 -subj "/C=MA/ST=Beni Mellal-Khenifra/L=Khouribga/O=1337/CN=mben-sal.42.fr" -addext "subjectAltName=DNS:mben-sal.42.fr" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;

COPY  conf/default /etc/nginx/sites-available/

EXPOSE 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]