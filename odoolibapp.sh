#!/bin/bash
echo "Starting Odoo server"
sleep 2
google-chrome &
evince ~/Downloads/books/*Mader.pdf &
gnome-terminal -- bash -c 'psql -d library' &
firefox "http://carpediem:8069" &
cd ./odoo 
./odoo-bin --addons-path="~/work15/library,~/work15/odoo/addons" -d library -c ../library.conf 
