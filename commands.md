## OTHER USEFUL COMMANDS

#### Create new MySQL User
```sh
sudo mysql
    CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
    GRANT ALL PRIVILEGES ON *.* TO 'database_user'@'localhost';
```

#### Certbot with CloudFlare
```sh
sudo snap install --beta --classic certbot
sudo snap set certbot trust-plugin-with-root=ok
sudo snap install --beta certbot-dns-cloudflare
sudo snap connect certbot:plugin certbot-dns-cloudflare
mkdir ~/.secrets
mkdir ~/.secrets/certbot
echo "dns_cloudflare_api_token = [CLOUDFLARE_API_TOKEN]" > ~/.secrets/certbot/cloudflare.ini
sudo chmod 600 ~/.secrets/certbot/cloudflare.ini
```

##### For premium domains
```sh
certbot \
--dns-cloudflare \
--dns-cloudflare-credentials ~/.secrets/certbot/cloudflare.ini \
-d domain.com \
-d *.domain.com -i apache
```

##### For free domains (MANUAL)
```sh
certbot certonly \
--manual \
--email email@domain.com \
--server https://acme-v02.api.letsencrypt.org/directory \
--agree-tos \
-d domain.cf \
-d *.domain.cf
```

Reference: [CertBot](https://certbot.eff.org/lets-encrypt/ubuntufocal-apache)
