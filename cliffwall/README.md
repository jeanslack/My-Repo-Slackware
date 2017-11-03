---------------------------------------------------------
This is SlackBuild scipt for build cliffwall packages.
---------------------------------------------------------

Description:
----
cliffwall is a my personal front-end of iptables and consist in a Stateful 
Firewalling by python script for a single host.

Instructions
----
If you want create only a cliffwall package for Slackware, you should 
downloading this slackbuild and his content directory. An easy way to download 
this slackbuild directory of cliffwall program to your local computer is the 
following command (provided you installed the svn package)

    svn checkout https://github.com/jeanslack/slackbuilds/trunk/cliffwall

requires dependencies:
----
			Python >= 2.6 (no python >= 3)
			iptables



Make a package with the slackbuild:
----
This slackbuild has been setup to automatically download the latest source 
release of the cliffwall on my github repo in archive .tar.gz.
Run the slackbuild in the usual way.

Do after installation:
----
After installation, to run cliffwall at boot you can add the following code 
to rc.local file:

		if [ -x /lib/cliffwall/cliffwall-init ]; then
			/lib/cliffwall/cliffwall-init start
		fi

or (simpler and more effective) make a symlink to /lib/cliffwall/cliffwall-init 
In this case should be running before the internet connection, like this:

		ln -s /lib/cliffwall/cliffwall-init /etc/rc.d/rc.firewall

at last add need executable in both case, of course:

		chmod +x /lib/cliffwall/cliffwall-init

