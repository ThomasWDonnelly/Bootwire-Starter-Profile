<?php

/*

This is an example of the collapse accordion

In this example we loop through pages that have a fixed parent - in this case it is a page called news-articles.

From those children we take the title field and the body field, but obviously customise this to your own needs.

I have limited it to 5 child pages here.

Note: We use a count because each section needs a specific id.

The first iteration of the loop needs an addional class of "in" - so we treat the first differently from the rest.

*/

?>	
	
<div class="accordion" id="accordion2">
	
<?php

// First we get our news items and limit it to just 5
$newsitems = $pages->get("/content-management/news-articles/")->children('limit=5');
// Now we need to get the first child and pop it into a variable
$firstchild = $pages->get("/content-management/news-articles/")->child;

//Now, to start the loop:

foreach($newsitems as $newsitem) {
	//This is our count	
	$count++;
	//This will populate the first child with the class "in", telling it to be open when first activated
	$activeClass = ($newsitem === $firstchild ? 'in' : ''); 
?>

	  <div class="accordion-group">

	  	<!-- This is the heading - we will click on the Title to open the pane -->
	    
	    <div class="accordion-heading">
	      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse<?php echo $count; ?>">  
	        <?php echo $newsitem->title; ?>
	      </a>
	    </div>

	    <!-- This is the content pane which we are populating with a summary. This stays hidden unless -->

	    <div id="collapse<?php echo $count; ?>" class="accordion-body collapse <?php echo $activeClass; ?>">	      
	      <div class="accordion-inner sitecollapse-pane">
	      	<?php if ($newsitem->news_leadimage) { ?><div class="thumb-pull-left siteimage"><img src="<?php echo $newsitem->news_leadimage->getThumb('newswidget'); ?>" /></div> <?php } ?>
	      	<?php echo $newsitem->summary; ?>...<a href="<?php echo $newsitem->url; ?>">Read More</a></p>
	      </div>
	    </div>

	  </div>

<?php } ?>

</div>