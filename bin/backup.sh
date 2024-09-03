#!/bin/bash

cd /home
tar cvzf /backup/home_`date +%m%d_%H%M%S`.tar.gz . > /backup/backup.log 2>&1
	if [ $? -eq 0 ] ; then           /* -eq : equal */
		echo "OK backup success"
	else
		echo "Error backup fall"
	fi
