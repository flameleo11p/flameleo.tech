#!/bin/bash


function main() {
  local website=`basename $(realpath .)`;

	sudo mkdir -p /var/www/$website/public_html 
	sudo rm -rf /var/www/$website/public_html 
	sudo cp -r public_html/ /var/www/$website/public_html
	sudo chown -R www-data: /var/www/$website/public_html
	ls -l /var/www/$website/public_html
}

main



