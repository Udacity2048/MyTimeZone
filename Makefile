install: 
	install tz-server tz-client /usr/local/bin
	grep -q "`cat tz-services`" /etc/services || cat tz-services >> /etc/services
	install tz-xinetd /etc/xinetd.d/tz-server
	service xinetd restart 
	msgfmt -o tz-client_fr.mo tz-client_fr.po
	install tz-client_fr.mo /usr/share/locale/fr_FR/LC_MESSAGES/tz-client.mo

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

