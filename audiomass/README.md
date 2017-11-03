---------------------------------------------------------
This is SlackBuild script for build audiomass-cli packages.
---------------------------------------------------------

Description:
----

Audiomass-cli is a command-line program similar ncurses interface to 
convert audio-file.

Instructions
---- 
If you want create only a audiomass package for Slackware, you should 
downloading this slackbuild and his content directory. An easy way to download 
this slackbuild directory to your local computer is the following command 
(provided you installed the svn package):

    svn checkout https://github.com/jeanslack/slackbuilds/trunk/audiomass

Dependencies:
----
This package requires:
 
    python >=2.6 (no python >= 3)
    shntools 
    ffmpeg 
    mac

Make a package with the slackbuild:
----
This slackbuild has been setup to automatically download the latest source 
release of the audiomass on my github repo in archive .tar.gz.
Run the slackbuild in the usual way.
