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

<link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet">
<a class="bmc-button" target="_blank" href="https://www.buymeacoffee.com/pjsalita" style="padding: 7px 15px 7px 10px !important;line-height: 35px !important;height:51px !important;text-decoration: none !important;display:inline-flex !important;color:#ffffff !important;background-color:#FF5F5F !important;border-radius: 8px !important;border: 1px solid transparent !important;font-size: 24px !important;letter-spacing:0.6px !important;box-shadow: 0px 1px 2px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;margin: 0 auto !important;font-family:'Cookie', cursive !important;-webkit-box-sizing: border-box !important;box-sizing: border-box !important;">🍕<span style="margin-left:5px;font-size:24px !important;">Buy me a Pizza</span></a>