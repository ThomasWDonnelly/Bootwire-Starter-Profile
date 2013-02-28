<?php

/* This functions file contains various elements that are commonly used with Bootstrap

Each element includes instructions as to what fields were used, though those
fields probably do not exist in the administration and will need to be created.

These elements can be inserted into any page simply by using:

functionName();

*/

/* BOOTSTRAP CAROUSEL

The Bootstrap carousel is a straightforward, responsive slider that can take both
images and html content.

In this version, it is simply presented as an images slider with caption.

The carousel requires the container for the first slide to have the class "active" so
we identify the first image in the $firstImage variable and then match it to the array 
contained in $image

Note, this can also be used as a content slider with a repeater field or even a set of
pages, in which case you would need to find the first item in the associated array.

THis version includes the extra Carousel Indicators which started with Bootstrap 2.3

FIELDS

images - an ordinary image field

We also use the description attribute from the field.

*/

function bootwireCarousel(){

// We will need to treat the first image separately
	
	$slides = wire("page")->images;
	if($slides) {
	$firstImage = $slides->first();

	$out =" ";

// The indicators
	$out .="<ol class='carousel-indicators'>";

// the carousel indicators need to start at 0
	$count = -1; 

	foreach($slides as $slide) {
	$activeClass = ($slide === $firstImage ? 'active' : ''); 
	$count++;

  	$out .="<li data-target='#myCarousel' data-slide-to='{$count}' class='{$activeClass}'></li>";
 }
	$out .="</ol>";

// Carousel Items

 	$out .="<div class='carousel-inner'>";

	foreach($slides as $slide) {
	$activeClass = ($slide === $firstImage ? 'active' : ''); 

    $out .="<div class='{$activeClass} item'>";
    $out .="<img src='{$slide->url}' />";
    $out .="<div class='carousel-caption'><p>{$slide->description}</p></div>";
    $out .="</div>";

 	}

  	$out .="</div>"; // /carousel inner

  // Carousel optional nav - you can remove these if you dont want the side arrows

  	$out .="<a class='carousel-control left' href='#myCarousel' data-slide='prev'>&lsaquo;</a>";
  	$out .="<a class='carousel-control right' href='#myCarousel' data-slide='next'>&rsaquo;</a>";

  echo "<div id='myCarousel' class='carousel slide'>{$out}</div>";
	}
}


/* BOOTSTRAP COLLAPSE

This is the Bootstrap Accordion

This example just grabs the title and body from some child pages to the home page.

Fields:

title - used for the header of the accordion
body - used for the content panels.

*/

function bootwireCollapse(){

// First we get our pages and limit it to just 5
$items = wire("pages")->get("/")->children('limit=5');

// Now we need to get the first child and pop it into a variable
$firstitem = $items->first();

$out =" ";
//Now, to start the loop:

foreach($items as $item) {
	//This is our count	
	$count++;
	//This will populate the first child with the class "in", telling it to be open when first activated
	$activeClass = ($item === $firstitem ? 'in' : ''); 


	$out .="<div class='accordion-group'>";

	// This is the heading - we will click on the Title to open the pane -->
	    
	$out .="<div class='accordion-heading'>";
	$out .="<a class='accordion-toggle' data-toggle='collapse' data-parent='#accordion2' href='#collapse{$count}'>";  
	$out .=$item->title;
	$out .="</a></div>";

	// This is the content pane which we are populating with a summary. This stays hidden unless -->

	$out .="<div id='collapse{$count}' class='accordion-body collapse {$activeClass}'>";	      
	$out .="<div class='accordion-inner sitecollapse-pane'>";
	$out .=$item->body;
	$out .="</div></div>";

	$out .="</div>";

	}

echo "<div class='accordion' id='accordion2'>{$out}</div>";

}

/* BOOTSTRAP TABS

This is a simple example of Tabs

For this example, we will use exactly the same pages as for the accordion example. 
The markup is simpler, however.

We will use the name property of each page to link the tabs with the panels.

*/

function bootwireTabs(){

// First we get our news items and limit it to just 5
$items = wire("pages")->get("/")->children('limit=5');

// Now we need to get the first child and pop it into a variable
$firstitem = $items->first();

$out =" ";
// The Tabs

	$out .="<ul class='nav nav-tabs'>";
	foreach($items as $item){
	//This will populate the first child with the class "active", telling it to be open when first activated
	$activeClass = ($item === $firstitem ? 'active' : ''); 

		$out .="<li class='{$activeClass}'><a href='#{$item->name}' data-toggle='tab'>{$item->title}</a></li>";
	}
	$out .="</ul>";
// The Content
	$out .="<div class='tab-content'>";
	foreach($items as $item){
	//This will populate the first child with the class "active", telling it to be open when first activated
	$activeClass = ($item === $firstitem ? 'active' : ''); 

		$out .="<div class='tab-pane {$activeClass}' id='{$item->name}'>{$item->body}</div>";
	}
	$out .="</div>";
echo $out;

}

/* Bootstrap Button Dropdown

This is just an example to be cut and pasted rather than 
used as a function. Here, I have just linked to children of the 
home page.

So I have used "echo" throughout - just copy from within the function brackets

*/

function bootwireButtonDropdown(){
	$links = wire("pages")->get("/")->children;

	echo "<div class='btn-group'>";
	echo "<a class='btn dropdown-toggle' data-toggle='dropdown' href='#'>Click Me <span class='caret'></span></a>";
	echo "<ul class='dropdown-menu'>";

	foreach($links as $link){
		echo "<li><a href='{$link->url}'>{$link->title}</a></li>";
	}

	echo "<ul></div>";

}