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


if [ -e etc/rc.d/rc.firewall ]; then
	cp -a etc/rc.d/rc.firewall etc/rc.d/rc.firewall.new.incoming
	cat etc/rc.d/rc.firewall.new > etc/rc.d/rc.firewall.new.incoming
	mv etc/rc.d/rc.firewall.new.incoming etc/rc.d/rc.firewall.new
fi
config etc/rc.d/rc.firewall.new 


if [ -e etc/pyfirewall/0.12/rules_single_interface.conf ]; then
	echo -e "\nAttenzione, Esiste un'altra coppia di /etc/pyfirewall/0.12/rules_single_interface.conf"
	echo -e "..Procedo al BackUp: sarà rinominato 'rules_single_interface.conf.orig'\n"
	cp -a etc/pyfirewall/0.12/rules_single_interface.conf etc/pyfirewall/0.12/rules_single_interface.conf.new.incoming
	cat etc/pyfirewall/0.12/rules_single_interface.conf.new > etc/pyfirewall/0.12/rules_single_interface.conf.new.incoming
	mv etc/pyfirewall/0.12/rules_single_interface.conf.new.incoming etc/pyfirewall/0.12/rules_single_interface.conf.new
	mv etc/pyfirewall/0.12/rules_single_interface.conf etc/pyfirewall/0.12/rules_single_interface.conf.orig # if exist, make back-up and rename in .orig
	chmod 0644 etc/pyfirewall/0.12/rules_single_interface.conf.orig
fi
config etc/pyfirewall/0.12/rules_single_interface.conf.new
chmod 0700 etc/pyfirewall/0.12/rules_single_interface.conf

if [ -e etc/pyfirewall/0.12/rules_multi_interfaces.conf ]; then
	echo -e "\nAttenzione, Esiste un'altra coppia di /etc/pyfirewall/0.12/rules_multi_interfaces.conf"
	echo -e "..Procedo al BackUp: sarà rinominato 'rules_multi_interfaces.conf.orig'\n"
	cp -a etc/pyfirewall/0.12/rules_multi_interfaces.conf etc/pyfirewall/0.12/rules_multi_interfaces.conf.new.incoming
	cat etc/pyfirewall/0.12/rules_multi_interfaces.conf.new > etc/pyfirewall/0.12/rules_multi_interfaces.conf.new.incoming
	mv etc/pyfirewall/0.12/rules_multi_interfaces.conf.new.incoming etc/pyfirewall/0.12/rules_multi_interfaces.conf.new
	mv etc/pyfirewall/0.12/rules_multi_interfaces.conf etc/pyfirewall/0.12/rules_multi_interfaces.conf.orig # if exist, make back-up and rename in .orig
	chmod 0644 etc/pyfirewall/0.12/rules_multi_interfaces.conf.orig
fi
config etc/pyfirewall/0.12/rules_multi_interfaces.conf.new
chmod 0700 etc/pyfirewall/0.12/rules_multi_interfaces.conf


if [ -e etc/pyfirewall/0.12/iface.conf ]; then
	echo -e "\nAttenzione, Esiste un'altra coppia di /etc/pyfirewall/0.12/iface.conf"
	echo -e "..Procedo al BackUp: sarà rinominato 'iface.conf.conf.orig'\n" 
	mv etc/pyfirewall/0.12/iface.conf etc/pyfirewall/0.12/iface.conf.orig # if exist, make back-up and rename in .orig
fi
config etc/pyfirewall/0.12/iface.conf.new
chmod 0644 etc/pyfirewall/0.12/iface.conf


# if exist sysctl.conf, make back-up and rename in .orig
if [ -e etc/sysctl.conf ]; then
        echo -e "\nAttenzione, Esiste un altro config chiamato 'sysctl.conf' in /etc"
	echo -e "..Procedo alla copia di BackUp: il file sarà rinominato 'sysctl.conf.orig'\n"
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

echo -e "\n\E[1m Now, you can execution in terminal window '/sbin/sysctl -p'\n for enable network security kernel parameters, then run\n pyfirewall whit 'pyfirewall start'. Read the every best man\n page with 'man pyfirewall' for more info.\E[0m\n"


