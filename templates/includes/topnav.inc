<?php

/*

This is the bootstrap standard dropdown navigation set for nav-pills. 

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
?>
<ul class="nav nav-pills">
<?php
foreach($children as $child) {
         if($child->numChildren > 0 && $child<>$homepage){		
         	$class = $child === $page->rootParent ? " active" : '';
	         echo "<li class='dropdown$class'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>{$child->title}<b class='caret'></b></a>";	         	
	         	echo "<ul class='dropdown-menu'>";	         	
	         	foreach($child->children as $grandchild){
	         		if($grandchild->numChildren > 0 && $grandchild<>$homepage){
	         				$class = $grandchild === $page ? " class='active'" : '';	         	
				         	echo "<li class='dropdown-submenu$class'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>{$grandchild->title}</a>";

								echo "<ul class='dropdown-menu'>";
								
						         	foreach($grandchild->children as $greatgrandchild){
						         	$class = $greatgrandchild === $page ? " class='active'" : '';
						         	echo "<li$class><a href='{$greatgrandchild->url}'>{$greatgrandchild->title}</a></li>";
									}	
													
								echo "</ul>";
								
							echo "</li>";

	         		}else {
	         			    $class = $grandchild === $page->rootParent ? " class='active'" : '';
         					echo "<li$class><a href='{$grandchild->url}'>{$grandchild->title}</a></li>";
	         		}
				}
	         	
	         	echo "</ul>";

	         echo "</li>";

		 }else{
         $class = $child === $page->rootParent ? " class='active'" : '';
         echo "<li$class><a href='{$child->url}'>{$child->title}</a></li>";
         }
}
?>
</ul>
