$(function(){
	$crop = $('#jcrop_target');
	if ($crop.length > 0) {
		var w = $('#jcrop_target').data('width');
		var h = $('#jcrop_target').data('height');
		$crop.Jcrop({
			onChange: showCoords,
			onSelect: showCoords,
			aspectRatio: w/h,
			boxWidth: screen.width - 100,
   			boxHeight: screen.height - 100
		});
	}
	$('#show_preview').click(function(){
		$('#preview-container').toggleClass('hide');
	})
});

function showCoords(c)
{
	var ew = $('#jcrop_target').data('width');
	var eh = $('#jcrop_target').data('height');
	var ow = $('#jcrop_target').width();
	var oh = $('#jcrop_target').height();


	var rx = ew / c.w;
	var ry = eh / c.h;

	$('#preview').css({
		width: Math.round(rx * ow) + 'px',
		height: Math.round(ry * oh) + 'px',
		marginLeft: '-' + Math.round(rx * c.x) + 'px',
		marginTop: '-' + Math.round(ry * c.y) + 'px'
	});

	$('#x1').val(c.x);
	$('#y1').val(c.y);
	$('#w').val(c.w);
	$('#h').val(c.h);
};
