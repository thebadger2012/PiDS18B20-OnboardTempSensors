PiDS18B20-OnboardTempSensors
============================

Reading a DS18B20 and the Raspberry Pi onboard temperature sensors

Installation:
=============

1. Install a web server (your choice) on your PI. Since this little project is client-side any web server will do.
2. Copy the index.htm file to the root document directory of your web server. For Apache2, that would be /var/www.
3. Create a folder in /var/www called data. Type this command to create the folder: sudo mkdir /var/www/data
3. Copy the load_gpio.sh and otemp.sh files to your home directory (ie. /home/pi).
4. Go to your home directory and run sudo ./load_gpio.sh to load the required GPIO modules.
5. Run sudo ./otemp.sh to create the files in /var/www/data
6. Open your browser and point it to http://localhost/index.htm. You should see some information plus the two different temperature readings.
7. To update the txt files in /var/www/data with current data, you can run a cron job. To set up a job that runs otemp.sh once per minute, issue the following command: sudo crontab -e . That will open the cron job list in your default editor (VI, Nano, etc.). Add the following text, and save the file: */1 * * * * /home/pi/otemp.sh
8. Now your browser will update the temperature settings every 30 seconds, and your os will update the text files every minute.

load_gpio.sh
============

Shamelessly stolen from Mr. Tom Holderness who originally bundled this script with his PiThermServer git package
