<?php

/*

This is the include for the Bootstrap Carousel that uses the images from the home page.

*/

?>

<div id="myCarousel" class="carousel slide">
  <!-- Carousel items -->
  <div class="carousel-inner">
<?php

$first = true;
foreach($page->images as $image) {

?>



<?php if ($first) { ?>
    <div class="active item">
    	<img src="<?php echo $image->url; ?>" />
    	<div class="carousel-caption"><p><?php echo $image->description; ?></p></div>
    </div>

<?php   $first = false; 
		} else { 
?>
	
	<div class="item">
		<img src="<?php echo $image->url; ?>" />
		<div class="carousel-caption"><p><?php echo $image->description; ?></p></div>
	</div>
<?php } ?>


<?php } ?>

  </div>
  <!-- Carousel nav -->

  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>

</div>
