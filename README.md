# Godaddy Dynamic DNS Hack

Update DNS A records for your domain on Godaddy. 

It's useful mostly if you run a service behind a dynamic IP address on your local computer.

## Usage

Create [new API key](https://developer.godaddy.com/keys).

Edit the script according to your needs and add a crontab line:

`*/1 * * * * sh /path/to/your/script/godaddy_ddns_hack.sh >/dev/null 2>&1`
