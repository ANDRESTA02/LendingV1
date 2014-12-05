$(document).ready(function(){
	$("select#tipo_elemento_icono").on("load click change",function(){
		var glyficon= $(this).val();
		$("div#icon").html('<i class="'+glyficon+'"></i>');
		
	});
});