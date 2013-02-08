<?php

/*

Navigation for ProcessWire using the Bootstrap 2.2.2 markup

This allows for endless sub-categories. However, this might not be a sensible use for touch devices and would be better to use just one level of dropdown. No alteration of this script is necessary, simply restrict the menu in the Pages section of the admin.

Note: The Top level item where they have children cannot be linked to a page. This is to allow "click to open" for touch devices. So you need to arrange your pages accordingly.

Bootstrap 3 - there is no guarantees that this will work in Bootstrap 3 (whenever that comes out) simply because they are considering scrapping sub menus.

This menu was written by Soma based on work by NetCarver and a bit thrown in by Joss

*/

function renderChildrenOf($pa, $root = null, $output = '', $level = 0) {
    if(!$root) $root = wire("pages")->get(1);
    $output = '';
    $level++;
    foreach($pa as $child) {
        $atoggle = '';
        $class = '';
        if ($child->numChildren && $level == 1) {
            $class .= 'dropdown';
            $atoggle .= ' class="dropdown-toggle" data-toggle="dropdown"';
        } else if($child->numChildren && $child !== $root){
            $class .= 'dropdown-submenu';
        }
        // Makes the current page and it's top level parent add an active class
        if($child === wire("page")
           || ($level == 1 && $child === wire("page")->rootParent && $child !== $root)
           || ($level == 1 && wire("page")->parents->has($child) && $child !== $root)) {
            $class .= ' active';
        }
        $class = strlen($class) ? " class='".trim($class)."'" : '';
 
        $output .= "<li$class><a href='$child->url'$atoggle>$child->title</a>";
 
        // If this child is itself a parent and not the root page, then render it's children in their own menu too...
        if($child->numChildren && $child !== $root) {
            $output .= renderChildrenOf($child->children, $root, $output, $level);
        }
        $output .= '</li>';
    }
    $outerclass = ($level == 1) ? "nav" : 'dropdown-menu';
    return "<ul class='$outerclass'>$output</ul>";
}
 
// bundle up the first level pages and prepend the root home page
$root = $pages->get(1);
$pa = $root->children;
$pa = $pa->prepend($root);
 
// Set the ball rolling...
echo renderChildrenOf($pa);