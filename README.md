# Happy Cloud
Creative Embedded Systems HW 1, by Claire Jenkins

### Description
A raincloud installation where the color of the cloud changes according to daily horoscope.
Horoscope courtesy of [aztro REST API](https://aztro.readthedocs.io/en/latest/), sentiment analysis of horoscope completed using [MonkeyLearn API](https://monkeylearn.com/monkeylearn-api/) sentiment analysis model (free version). 

### Materials
- Raspberry Pi 4
- External Monitor
- Freenove 8 RGB LED module, plus 'cloud'

### Setup
Install Processing on your Raspberry Pi (if it is not already).

Download cloud.py and the rain folder from this repository.

Optional: edit `params = (('sign', 'libra'), ('day', 'today'),)` in cloud.py to change the astrological sign of the horoscope used in the script.

Edit the pi's rc.local file by entering
` sudo nano /etc/rc.local `
on the command line.

Add the following line to the file just before `exit 0`:

`sudo python3 /[INSERT FULL PATH]/cloud.py`

Open the autostart file by entering
`sudo nano /etc/xdg/lxsession/LXDE-pi/autostart`
on the command line.

Add the following lines to the end of this file:

`@xset s off`

`@xset -dpms`

`/usr/local/bin/processing-java --sketch=/[INSERT FULL PATH]/rain --run`

The python3 script and Processing sketch should now run on boot.

See the installation in action [here](https://youtu.be/HAGHOmP0wMo).
