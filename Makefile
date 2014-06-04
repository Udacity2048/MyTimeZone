install: 
	grep -q "`cat tz.services`" /etc/services || cat tz.services >> /etc/services
        install tz.xinetd /etc/xinetd.d/tz.client

clone:
      	git clone https://github.com/itmo-infocom/calc_examples.git

download:
	git pull

upload:
       	git add -A
        git commit
        git push origin

tags:
     	git push origin --tags

