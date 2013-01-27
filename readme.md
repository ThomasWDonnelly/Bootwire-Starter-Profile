Bootwire Starter Profile
========================

A Profile for the ProceesWire CMS
---------------------------------

This is a ready to go profile for ProcessWire with Twiter Bootstrap 2.2.2, but no content.

It has a basic header and footer in an includes folder and the home.php template has just a row plus includes for the header and footer, as does the basic-page template.

topnav.inc is bootstrap ready.

This is designed for people that want a clean start and are used to creating Bootstrap sites and ProcessWire sites.

You may also be interested in the Bootwire Admin theme:

https://github.com/jsanglier/Bootwire-Admin

If you want a more full Bootstrap based profile with starter content please try the Bootwire Profile:

https://github.com/jsanglier/bootwire

Modules
-------

This has Soma's module manager pre-installed as well as the Page Delete Module.

TinyMCE
-------

TinyMCE has the spell check installed, so you will need to copy the attached tinymce directory into your /site directory as well which holds the plugin.

The context menu is enabled and two Bootstrap styles (lead and btn) are added. 

Pasting into the TinyMCE field will automatically remove all formatting. If you do not want that functionality, remove paste_text_sticky: true and paste_text_sticky_default:true from the Additional TinyMCE Settings field.

"style" has been added to the parameters to allow those to work.

The Body field is set up ready for all of that, so you may want to clone that field when you need a TinyMCE field.

Installation
------------

Download the most recent version of ProcessWire (you may want to try the dev branch)

Upload the contents of the archive to your server.

Open the site-default directory

Delete the Install, Modules and Templates directory.

Replace with the Install, Modules, Templates and TinyMCE directory from the Bootwire Starter Profile

Proceed with the install as normal.

ProcessWire
-----------

ProcessWire is a cutting edge Content Management System and Content Management Framework that can produce powerful, scalable sites quickly and easily while giving the developer full control over the design process

http://processwire.com/