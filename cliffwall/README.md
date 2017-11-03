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

    svn checkout https://github.com/jeanslack/my_repository/trunk/slackbuilds/cliffwall

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
like this:

		ln -s /lib/cliffwall/cliffwall-init /etc/rc.d/rc.firewall

at last add need executable in both case, of course:

		chmod +x /lib/cliffwall/cliffwall-init


For instructions on how to use the SlackBuilds, see:
----

[http://slackbuilds.org/howto/](http://slackbuilds.org/howto/)

[http://www.slackwiki.com/SlackBuild_Scripts](http://www.slackwiki.com/SlackBuild_Scripts)

[http://www.slacky.eu/slacky/Slackware_%26_SlackBuild](http://www.slacky.eu/slacky/Slackware_%26_SlackBuild)

