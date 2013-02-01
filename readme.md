Bootwire Starter Profile
========================

A Profile for the ProceesWire CMS
---------------------------------

IMPORTANT - This was exported from a ProcessWire Dev Installation!

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


Full list of files and settings
===============================

Fields
------

Common:

Title (text field used in all templates)
Body (TinyMCE field with additional settings for context menu, spellchecker and a couple of Bootstrap styles)

Settings:

site_title (Text field used in the site_settings template to display the site title wherever needed - currently used in the head <title> element)

Templates
---------

Templates without a template files:

Site-Settings-Template (used for the Site-Settings page)
blank-template (a place holder template, currently used for the Content Management page)

With a template file:

home (mandatory home template)
basic-page (currently used for the 404 page)

Pages
-----

Home
-- Content Management (hidden page for placing all pages that are not directly used in the menu)
---- Site Settings (Page for adding any common site information like title, meta description, etc)
-- 404 Page Not Found

Admin
Trash

Modules
-------

I have pre-installed these modules:

Modules Manager (I will remove this when the full version of 2.3 comes out)
Export Site Profile
Page Delete
Thumbnails



Files in the Templates Folder
-----------------------------

admin.php (Required)
home.php (Required home page)
basic-page.php (template file used for 404 page)

CSS/

-- bootstrap.min.css
-- bootstrap-responsive.min.css
-- bootstrap-overrides.css (for adding any overrides to the main Bootstrap styles)
-- site.css (for adding site specific css)
-- editor.css (css for the TinyMCE editor)

img/

-- glyphicons-halflings-white.png (for the Bootstrap icon system)
-- glyphicons-halflings.png


includes/

-- head.inc (header that includes the standard bootstrap navbar)
-- foot.inc (footer that includes all javascript references)
-- topnav.inc (the code for the PW standard menu)
-- carousel.inc ( PW example markup for the Bootstrap carousel)
-- collapse.inc (PW example markup for the Bootstrap accordion)

js/

-- jquery-1.8.3.js
-- bootstrap.min.js



Other Files
-----------

/tinymce - this has the spellchecker plugin for tinyMCE
/modules - some pre installed modules such as the Modules Manager, Profile Exporter, Thumbnails field and Page Delete. Please check for updates using the Module Manager

Install
-------

The installation folder.
