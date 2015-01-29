---------------------------------------------------------
SlackBuild scipt for build Videomass packages.
---------------------------------------------------------

Description:
----

This automates the package building for Slackware distibutions.


Instructions
---- 

- Open a terminal window and download this SlackBuilds content directory :

		svn checkout https://github.com/jeanslack/My-Repo-Slackware/trunk/slackware/multimedia/videomass


- Login with root:

		su -
		
- Enter in the path-name of a slackbuild folder:

		cd /path/of_the slackbuild/

- Then run the script:

		./videomass.SlackBuild

Make sure to run this script in a real root shell ("su -") and that you
have either tetex or texlive installed.


For instructions on how to use the SlackBuilds, see:

[http://slackbuilds.org/howto/](http://slackbuilds.org/howto/)

[http://www.slackwiki.com/SlackBuild_Scripts](http://www.slackwiki.com/SlackBuild_Scripts)

[http://www.slacky.eu/slacky/Slackware_%26_SlackBuild](http://www.slacky.eu/slacky/Slackware_%26_SlackBuild)
