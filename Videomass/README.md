---------------------------------------------------------
This is SlackBuild scipt for build Videomass packages.
---------------------------------------------------------

Description:
----
Videomass is a cross-platform graphic user interface for ffmpeg. 
It is developed with the wxPython toolkit.

Instructions
----
If you want create only a videomass package for Slackware, you should 
downloading this slackbuild and his content directory. An easy way to download 
this slackbuild directory to your local computer is the following command 
(provided you installed the svn package):

    svn checkout https://github.com/jeanslack/slackbuilds/trunk/Videomass

Dependencies:
----
videomass requires these dependencies:

require:
	
    Python >= 2.6 (no python 3)
    wxPython >= 2.8
    
extra require:
  
    ffmpeg >= 2.1

Compiled or configured with 

    --eneble-nonfree 

..and with the following libraries (static or shared):

    x264
    lame
    faac
    vp8(libvpx)
    xvid
    
Make a package with the slackbuild:
----
This slackbuild has been setup to automatically download the latest source 
release of the videomass on my github repo in archive .tar.gz.
Run the slackbuild in the usual way.

Italian Resources:
----
[http://itamburiditux.blogspot.it/search?q=videomass](http://itamburiditux.blogspot.it/search?q=videomass)
