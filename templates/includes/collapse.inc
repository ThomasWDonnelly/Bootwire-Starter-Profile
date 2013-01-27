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

$newsitems = $pages->get("/news-articles/")->children('limit=5');
$first = true;
foreach($newsitems as $newsitem) {
$count++;

?>


<?php if ($first) { ?>
<!-- This is for the first group -->
	  <div class="accordion-group">
	    <div class="accordion-heading">
	      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse<?php echo $count; ?>">
	        
	        <!-- This is the title of the section -->
	        <?php echo $newsitem->title; ?>
	      </a>
	    </div>
	    <div id="collapse<?php echo $count; ?>" class="accordion-body collapse in">
	      <div class="accordion-inner sitecollapse-pane">
	      	<!-- Put your contents in here -->
	      	<?php echo $newsitem->body; ?>
	      </div>
	    </div>
	  </div>
  
  
<?php   $first = false; 
		} else { 
?>

<!-- This is for the second and rest -->

	<div class="accordion-group">
	    <div class="accordion-heading">
	      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse<?php echo $count; ?>">
	        
	        <!-- This is the title of the section -->
	        <?php echo $newsitem->title; ?>
	        
	      </a>
	    </div>
	    <div id="collapse<?php echo $count; ?>" class="accordion-body collapse">
	     	 <div class="accordion-inner sitecollapse-pane">      	
	      	<!-- Put your contents in here -->
			<?php echo $newsitem->body; ?>
			</div>
		</div>	
      </div>

  </div>

<?php } ?>


<?php } ?>



