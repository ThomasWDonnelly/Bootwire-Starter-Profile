<?php

/*

This is the bootstrap standard dropdown navigation. 

It includes sub navs allowing you menu to have three
levels - Top row, dropdown and subnav.

IMPORTANT

Bootstrap does not allow the parent to be linkable, so your parents in your pages tree
Need be nothing more than a page with a template and no associated template file. The template
only needs to have the recommended title field.

*/

$homepage = $pages->get("/");
$children = $homepage->children;
$children->prepend($homepage);

echo "<ul class='nav'>";

foreach($children as $child) {

// Some variables
$aclass = count($child->children) ? "dropdown-toggle' data-toggle='dropdown" : '';
$dropclass = count($child->children) ? "dropdown" : '';
$dropcaret = count($child->children) ? "<b class='caret'></b>" : '';
$class = $child === $page->rootParent ? " active" : '';

// first level <li>

// Start by printing off those that actually have children and are not the homepage.

if($child->numChildren > 0 && $child<>$homepage){
	
echo "<li class='$class $dropclass'><a class='$aclass' href='{$child->url}'>{$child->title}$dropcaret</a>";

// Drop down of second level
	if(count($child->children)){
		echo "<ul class='dropdown-menu'>";
			foreach($child->children as $subchild){
				$subdropclass = count($subchild->children) ? "dropdown-submenu" : '';
				echo "<li class='$subdropclass'><a href='{$subchild->url}'>" . $subchild->title . "</a>"; // Second level list

			// HELP WITH THIS SECTION 
			// This next bit is the sub menu and needs to go on for infinity! 
			// I dont know how to do that.

				if(count($subchild->children)){
					echo "<ul class='dropdown-menu'>";
						foreach($subchild->children as $babychild){
						echo "<li ><a href='{$babychild->url}'>" . $babychild->title . "</a>"; // 3rd level list
						echo "</li>";
					}
					echo "</ul>";
				}

			// End of the sub menu bit that I need help with.


				echo "</li>"; // end second level list

		}
		echo "</ul>";
	} // end second level

echo "</li>"; // End first level

// And finally, do the top level menu items that dont have children and chuck in the homepage.

 }else{
 $class = $child === $page->rootParent ? " class='active'" : '';
 echo "<li$class><a href='{$child->url}'>{$child->title}</a></li>";
 }

// end the loop	
}

echo "</ul>";
