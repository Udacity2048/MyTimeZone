install: 
	install tz-server tz-client /usr/local/bin
	grep -q "`cat tz-services`" /etc/services || cat tz-services >> /etc/services
	install tz-xinetd /etc/xinetd.d/tz-server
	service xinetd restart 
<<<<<<< HEAD
	msgfmt -o tz-client_fr.mo tz-client_fr.po
	install tz-client_fr.mo /usr/share/locale/fr_FR/LC_MESSAGES/tz-client.mo
=======
>>>>>>> 3d10954c4596f30c5e45543689c202bf9f278f9a

clone:
	git clone https://github.com/Udacity2048/MyTimeZone

download:
	git pull

upload:
	git add -A
	git commit
	git push origin

tags:
	git push origin --tags

