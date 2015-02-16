---------------------------------------------------------
This is SlackBuild scipt for build cliffwall packages.
---------------------------------------------------------

cliffwall is a front-end of iptables and consist in a Stateful Firewalling 
by python script for a single host.

You must download this folder completely (if compressed archive, unpack it)
and then download cliffwall sources. The cliffwall source directory be renamed 
with 'name-version' and compressed in 'tar.gz' archive after the download. 
Put the archive of cliffwall into the slackbuild folder and run 'program.SlackBuild' 
sh script.

Make sure to run this script in a real root shell ("su -") and that you
have either tetex or texlive installed.

To run cliffwall at boot you can add the following code to rc.local file:

if [ -x /lib/cliffwall/cliffwall-init ]; then
/lib/cliffwall/cliffwall-init start
fi


Description:
----

This automates the package building for Slackware distibutions.


Package instructions
---- 

- Open a terminal window and download this SlackBuilds content directory :

		svn checkout https://github.com/jeanslack/My-Repo-Slackware/trunk/slackware/security/cliffwall


- Login with root:

		su -
		
- Enter in the path-name of a slackbuild folder:

		cd /path/of_the slackbuild/

- Then run the script:

		./cliffwall.SlackBuild

Make sure to run this script in a real root shell ("su -") and that you
have either tetex or texlive installed.


For instructions on how to use the SlackBuilds, see:

[http://slackbuilds.org/howto/](http://slackbuilds.org/howto/)

[http://www.slackwiki.com/SlackBuild_Scripts](http://www.slackwiki.com/SlackBuild_Scripts)

[http://www.slacky.eu/slacky/Slackware_%26_SlackBuild](http://www.slacky.eu/slacky/Slackware_%26_SlackBuild)

