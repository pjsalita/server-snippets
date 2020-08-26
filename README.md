## SERVER SETUP AND CONFIGURATION

### SERVER: UBUNTU 20.04
AWS EC2 Instance setup LAMP stack script, check [commands.md](commands.md) for optional setup 

```sh
git clone https://github.com/pjsalita/server.git
cd server
bash setup.sh
# or
bash setup.sh [NameOrEmail] #to generate your private and public key
```

After setup you can point your domain to your public IP. Sample virtual hosts are under **sites** folder