mkdir -p certs
openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes -keyout certs/domain.key -out certs/domain.crt -config openssl.cnf

