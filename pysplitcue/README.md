---------------------------------------------------------
SlackBuild script for build pysplitcue packages.
---------------------------------------------------------

Description
----
This Slackbuild is a script for automatizing the **pysplitcue** compilation for 
packaging precompiled binaries of the Slackware distribuition and based Slackware 
distro.

How to handle this part of repository
----
You probably do not care downloading my slackbuilds repository entirely, but you want 
make a videomass package for Slackware, and then downloading this slackbuild and 
his content directory. An easy way to download this slackbuild directory to your local 
computer is the following command (provided you installed the svn package):

    svn checkout https://github.com/jeanslack/slackbuilds/trunk/pysplitcue

Dependencies:
----
This package requires:
 
    python >=2.6 (no python >= 3)

extra requires:
 
    flac
    cuetools
    shntool
    mac or monkeys-audio
    wavpack

Make a package with the slackbuild:
----
This slackbuild has been setup to automatically download the latest source 
release of the pysplitcue on my github repo in archive .tar.gz.
Run the slackbuild in the usual way.
