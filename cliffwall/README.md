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
As always, there are two ways to create a boot service on Slackware:

1)  After installation, to run cliffwall at boot add the following code 
    to /etc/rc.d/rc.local file:

		if [ -x /lib/cliffwall/cliffwall-init ]; then
			/lib/cliffwall/cliffwall-init start
		fi

2)  This second way is simpler and more effective because the firewall should   
    be running before the internet connection (network).   
    Make a symlink into /etc/rc.d, like this:

		ln -s /lib/cliffwall/cliffwall-init /etc/rc.d/rc.firewall

At last check the executable permission in both case:

                ls -l /lib/cliffwall/cliffwall-init   

If necessary, add the execution permissions with chmod:   

                chmod +x /lib/cliffwall/cliffwall-init

