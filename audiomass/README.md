----
SlackBuild script for build audiomass-cli packages.
----

Description
----
This Slackbuild is a script for automatizing the **audiomass-cli** compilation for 
packaging precompiled binaries of the Slackware distribuition and based Slackware 
distro.

How to handle this part of repository
----
You probably do not care downloading my slackbuilds repository entirely, but you want 
make a videomass package for Slackware, and then downloading this slackbuild and 
his content directory. An easy way to download this slackbuild directory to your local 
computer is the following command (provided you installed the svn package):

    svn checkout https://github.com/jeanslack/slackbuilds/trunk/audiomass

Dependencies:
----

**Required:**

- python >=2.6 (no python 3)

**Recommended:**

- flac
- lame
- vorbis-tools [oggenc, oggdec]
- shntool
- ffmpeg
- monkey's audio (I've seen it has different names, this depends on the
                  your O.S. - try search: libmac2, mac. monkey's audio)

Make a package with the slackbuild:
----
This slackbuild has been setup to automatically download the latest source 
release on my github repo in archive .tar.gz.
Run the slackbuild in the usual way.
