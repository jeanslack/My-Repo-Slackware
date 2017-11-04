---------------------------------------------------------
SlackBuild script for build cnijfilter-common driver 
package for Canon Pixma Printers
---------------------------------------------------------

Description:
----
This IJ Printer Driver provides printing functions for Canon Inkjet
printers operating under the CUPS (Common UNIX Printing System)
environment.
This Drivers are available for Canon ip3600, ip4600, mp630, mp540, 
mp240, mp190, ip1900 Models series only.

Support and download Source file:
----
[http://support-my.canon-asia.com/contents/MY/EN/0100160603.html](http://support-my.canon-asia.com/contents/MY/EN/0100160603.html)

Warnings and Notes:
----
This SlackBuild work on Slackware_14.0 and Slackware_14.1 versions only.
The source compilation fails on Slackware_14.2, this slackbuild is not 
up-to-date for 14.2 Slackware version.

Unfortunately there are no libraries for X86_64 architecture for this driver,
try installing with multilib

Instructions
---- 
If you want try create only a cnijfilter-common driver package for Slackware, 
you should downloading this slackbuild and his content directory. An easy way 
to download this slackbuild directory to your local computer is the following 
command (provided you installed the svn package):

    svn checkout https://github.com/jeanslack/slackbuilds/trunk/audiomass

Dependencies:
----
See the slack-required file

Example how to pass variable:
----
models name list

    ip3600
    ip4600
    mp630
    mp540
    mp240
    mp190
    ip1900

just you insert the exact model name in the list above, example:

    MODEL=ip3600 ./cnijfilter-common.SlackBuild

Make a package with the slackbuild:
----
This slackbuild has been setup to automatically download the source file.
If the download process fails, manually download the correct source and 
copy it to the slackbuild folder.
Then, run the slackbuild in the usual way. 

Others Resources:
----
1) My blogspot:   
[http://itamburiditux.blogspot.it/2012/06/canon-driver-per-slackware-1337-i486.html](http://itamburiditux.blogspot.it/2012/06/canon-driver-per-slackware-1337-i486.html)   
2) My blogspot:
[http://itamburiditux.blogspot.it/2012/06/driver-stampante-canon-mp630-ed-ip1900.html](http://itamburiditux.blogspot.it/2012/06/driver-stampante-canon-mp630-ed-ip1900.html)   
3) SlackBlogs by Willy Sudiarto Raharjo:   
[https://slackblogs.blogspot.it/2012/05/new-linux-printer-driver-on-slackhacks.html](https://slackblogs.blogspot.it/2012/05/new-linux-printer-driver-on-slackhacks.html)
