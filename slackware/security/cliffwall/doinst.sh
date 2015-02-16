#!/bin/sh


config() {
	NEW="$1"
	OLD="`dirname $NEW`/`basename $NEW .new`"
	# If there's no config file by that name, mv it over:
	if [ ! -r $OLD ]; then
		mv $NEW $OLD
	elif [ "`cat $OLD | md5sum`" = "`cat $NEW | md5sum`" ]; then # toss the redundant copy
		rm $NEW
	fi
	# Otherwise, we leave the .new copy for the admin to consider...
}

# configure rules_single_interface script
if [ -e etc/cliffwall/start ]; then
	cp -a etc/cliffwall/start \
	etc/cliffwall/start.new.incoming
	cat etc/cliffwall/start.new > \
	etc/cliffwall/start.new.incoming
	mv etc/cliffwall/start.new.incoming \
	etc/cliffwall/start.new
	mv etc/cliffwall/start \
	etc/cliffwall/start.orig # if exist, make back-up and rename in .orig
	chmod 0644 etc/cliffwall/start.orig
fi

config etc/cliffwall/start.new
chmod 0700 etc/cliffwall/start

# configure rules_multi_interfaces script
if [ -e etc/cliffwall/start_types ]; then
	cp -a etc/cliffwall/start_types \
	etc/cliffwall/start_types.new.incoming
	cat etc/cliffwall/start_types.new > \
	etc/cliffwall/start_types.new.incoming
	mv etc/cliffwall/start_types.new.incoming \
	etc/cliffwall/start_types.new
	mv etc/cliffwall/start_types \
	etc/cliffwall/start_types.orig # if exist, make back-up and rename in .orig
	chmod 0644 etc/cliffwall/start_types.orig
fi
config etc/cliffwall/start_types.new
chmod 0700 etc/cliffwall/start_types

# configure iface.conf 
if [ -e etc/cliffwall/iface.conf ]; then
	mv etc/cliffwall/iface.conf \
	etc/cliffwall/iface.conf.orig # if exist, make back-up and rename in .orig
fi
config etc/cliffwall/iface.conf.new
chmod 0644 etc/cliffwall/iface.conf


# if exist sysctl.conf, make back-up and rename in .orig
if [ -e etc/sysctl.conf ]; then
	mv etc/sysctl.conf etc/sysctl.conf.orig
# 	a=1
# 	for i in etc/*sysctl.conf.orig; 
# 	do
# 		mv $i etc/"$a"_sysctl.conf.orig
# 		let a=a+1 
#  
# 	done

fi
config etc/sysctl.conf.new

chmod 0755 lib/cliffwall/cliffwall-init-functions
chmod 0755 usr/sbin/cliffwall

echo -e "\n\E[1m Now, you can execute '/sbin/sysctl -p' in the terminal \
window for\n enable network security kernel parameters, then run \
cliffwall\n with 'cliffwall start' command.\n Read the every best man \
page with 'man cliffwall' for more info.\E[0m\n"
