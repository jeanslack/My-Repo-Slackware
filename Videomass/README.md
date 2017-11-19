-------------------------------------
Build a Slackware Videomass packages.
-------------------------------------

Description
----
This Slackbuild is a script for automatizing the **Videomass** compilation for 
packaging precompiled binaries of the Slackware distribuition and based Slackware 
distro.

How to handle this part of repository
----
You probably do not care downloading my slackbuilds repository entirely, but you want 
make a videomass package for Slackware, and then downloading this slackbuild and 
his content directory. An easy way to download this slackbuild directory to your local 
computer is the following command (provided you installed the svn package):

    svn checkout https://github.com/jeanslack/slackbuilds/trunk/Videomass

Dependencies
----
**Required:**
- Python >= 2.6 (no python >= 3)   
- wxPython >= 2.8   

**Extra required:**
- ffmpeg >= 2.1 
- ffprobe (for multimedia streams analysis) (can be built-in into ffmpeg)
- ffplay (media player for media preview) (can be built-in into ffmpeg)

**Optionals:**
- libx264 (has to be explicitly enabled when compiling ffmpeg)
- libmp3lame (has to be explicitly enabled when compiling ffmpeg)
- libfdk-aac (has to be explicitly enabled when compiling ffmpeg)
- libfdk-aac (has to be explicitly enabled when compiling ffmpeg)
- xvidcore (has to be explicitly enabled when compiling ffmpeg)
- libvpx (has to be explicitly enabled when compiling ffmpeg)
- libvorbis (has to be explicitly enabled when compiling ffmpeg)
- wavpack (has to be explicitly enabled when compiling ffmpeg)

Make a package with the slackbuild
----
This slackbuild has been setup to automatically download the latest source release of the 
videomass (if not present in your current directory) on my github repo in archive .tar.gz. 
Run the slackbuild in the usual way.

