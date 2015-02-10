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

# remove symlink
if [ -h etc/rc.d/rc.firewall ]; then	
	rm -rf etc/rc.d/rc.firewall
fi

version=0.13

# configure rc.firewall
if [ -e etc/rc.d/rc.firewall ]; then
	cp -a etc/rc.d/rc.firewall etc/rc.d/rc.firewall.new.incoming
	cat etc/rc.d/rc.firewall.new > etc/rc.d/rc.firewall.new.incoming
	mv etc/rc.d/rc.firewall.new.incoming etc/rc.d/rc.firewall.new
fi
config etc/rc.d/rc.firewall.new 

# configure rules_single_interface script
if [ -e etc/pyfirewall/$version/Iptables_Rules ]; then
	cp -a etc/pyfirewall/$version/Iptables_Rules \
	etc/pyfirewall/$version/Iptables_Rules.new.incoming
	cat etc/pyfirewall/$version/Iptables_Rules.new > \
	etc/pyfirewall/$version/Iptables_Rules.new.incoming
	mv etc/pyfirewall/$version/Iptables_Rules.new.incoming \
	etc/pyfirewall/$version/Iptables_Rules.new
	mv etc/pyfirewall/$version/Iptables_Rules \
	etc/pyfirewall/$version/Iptables_Rules.orig # if exist, make back-up and rename in .orig
	chmod 0644 etc/pyfirewall/$version/Iptables_Rules.orig
fi

config etc/pyfirewall/$version/Iptables_Rules.new
chmod 0700 etc/pyfirewall/$version/Iptables_Rules

# configure rules_multi_interfaces script
if [ -e etc/pyfirewall/$version/Iptables_Rules_MultiFaces ]; then
	cp -a etc/pyfirewall/$version/Iptables_Rules_MultiFaces \
	etc/pyfirewall/$version/Iptables_Rules_MultiFaces.new.incoming
	cat etc/pyfirewall/$version/Iptables_Rules_MultiFaces.new > \
	etc/pyfirewall/$version/Iptables_Rules_MultiFaces.new.incoming
	mv etc/pyfirewall/$version/Iptables_Rules_MultiFaces.new.incoming \
	etc/pyfirewall/$version/Iptables_Rules_MultiFaces.new
	mv etc/pyfirewall/$version/Iptables_Rules_MultiFaces \
	etc/pyfirewall/$version/Iptables_Rules_MultiFaces.orig # if exist, make back-up and rename in .orig
	chmod 0644 etc/pyfirewall/$version/Iptables_Rules_MultiFaces.orig
fi
config etc/pyfirewall/$version/Iptables_Rules_MultiFaces.new
chmod 0700 etc/pyfirewall/$version/Iptables_Rules_MultiFaces

# configure iface.conf 
if [ -e etc/pyfirewall/$version/iface.conf ]; then
	mv etc/pyfirewall/$version/iface.conf \
	etc/pyfirewall/$version/iface.conf.orig # if exist, make back-up and rename in .orig
fi
config etc/pyfirewall/$version/iface.conf.new
chmod 0644 etc/pyfirewall/$version/iface.conf


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

echo -e "\n\E[1m Now, you can execute '/sbin/sysctl -p' in the terminal \
window for\n enable network security kernel parameters, then run \
pyfirewall\n with 'pyfirewall start' command.\n Read the every best man \
page with 'man pyfirewall' for more info.\E[0m\n"
