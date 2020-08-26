## SERVER SETUP AND CONFIGURATION

### SERVER: UBUNTU 20.04
AWS EC2 Instance setup LAMP stack script.
This also installs composer, node, redis-server, and common php extensions.
Check [commands.md](commands.md) for optional setup.


```sh
git clone https://github.com/pjsalita/server.git
cd server
bash setup.sh
# or
bash setup.sh [NameOrEmail] #to generate your private and public key
```

Recommendations:
- Use CloudFlare to manage your DNS.
- After the setup has finished it will give you your instance's public IP, you can then point your domains to your public IP using A Records.
- Sample virtual hosts are under **sites** folder.

<a href="https://www.buymeacoffee.com/pjsalita"><img src="https://cdn.buymeacoffee.com/buttons/default-red.png" width="180"></a>
