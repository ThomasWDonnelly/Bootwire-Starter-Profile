<?php

/*
* This header includes the bootstrap top fixed navigation bar
*/

// Include the functions script

include("./includes/functions.inc");

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><?=$pages->get("/content-management/site-settings/")->site_title ?> - <?php echo $page->get("headline|title");  ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?=$page->summary ?>">
    <meta name="author" content="">

    <!-- Le styles -->
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>css/bootstrap.min.css" />
  
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>css/bootstrap-responsive.min.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>css/bootstrap-overrides.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>css/site.css" />    

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons - NOT INCLUDED. You need to create these and put them in /site/template/img/. -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo $config->urls->templates?>img/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo $config->urls->templates?>img/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo $config->urls->templates?>img/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?php echo $config->urls->templates?>img/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="<?php echo $config->urls->templates?>img/favicon.png">
  </head>

  <body>
<!-- Nav bar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#"><?=$pages->get("/content-management/site-settings/")->site_title ?></a>
          <div class="nav-collapse collapse">

          	<?php include("./includes/topnav.inc"); ?>

          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

<div class="container"><!-- Main container -->
