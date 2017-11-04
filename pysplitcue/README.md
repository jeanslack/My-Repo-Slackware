---------------------------------------------------------
SlackBuild script for build pysplitcue packages.
---------------------------------------------------------

Description:
----
Pysplitcue is a command-line program to split track audio from a cue-file 
and convert to a different audio formats

Instructions
---- 
If you want create only a pysplitcue package for Slackware, you should 
downloading this slackbuild and his content directory. An easy way to download 
this slackbuild directory to your local computer is the following command 
(provided you installed the svn package):

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

Italian Resources:
----
[http://itamburiditux.blogspot.it/2010/07/splitting-wav-ape-flac-and-add-tag-from.html](http://itamburiditux.blogspot.it/2010/07/splitting-wav-ape-flac-and-add-tag-from.html)
