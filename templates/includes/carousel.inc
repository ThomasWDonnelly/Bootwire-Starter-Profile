

<?php

/*

This is the include for the Bootstrap Carousel that uses the output from an images field.

The carousel requires the container for the first slide to have the class "active" so
we identify the first image in the $firstImage variable and then match it to the array 
contained in $image

Note, this can also be used as a content slider with a repeater field or even a set of
pages, in which case you would need to find the first item in the associated array.

This is a responsive slider so it will adjust to whatever size your container is.

THis version includes the extra Carousel Indicators which started with Bootstrap 2.3

*/

?>

<div id="myCarousel" class="carousel slide">

<?
$firstImage = $page->images->first();
?>

<!-- Carousel indicators -->
<ol class="carousel-indicators">
<?
foreach($page->images as $image) {
$activeClass = ($image === $firstImage ? 'active' : ''); 
$count++;
?>
  <li data-target="#myCarousel" data-slide-to="<?php echo $count; ?>" class="<?php echo $activeClass; ?>"></li>
<?php } ?>
</ol>

<!-- Carousel Items -->
 <div class="carousel-inner">
<?php
foreach($page->images as $image) {
$activeClass = ($image === $firstImage ? 'active' : ''); 
?>
    <div class="<?php echo $activeClass; ?> item">
      <img src="<?php echo $image->url; ?>" />
      <div class="carousel-caption"><p><?php echo $image->description; ?></p></div>
    </div>

<?php } ?>

  </div><!-- /carousel inner -->
  <!-- Carousel optional nav - you can remove these if you dont want the side arrows. -->

  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>

</div><!-- /myCarousel -->