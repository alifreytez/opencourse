$(document).ready(function(){
	let menuEstado = false;

	// Escuchar el evento click en algún elemento de navegacion
	$('a').click(function (e){
		e.preventDefault();
		let enlace = $(this).attr('href');
		if(enlace == '#'){
			return false;
		} else{
			window.location.href = enlace;
		}
	});
	//Menu usuario
	$('.ajuste-cont').click(function (){
		if(!menuEstado){
			//Mostrar 'menu usuario'
			$('#menu-usuario').show(0).delay(100).animate({opacity:1}, 50);
			menuEstado = true;
		} else{
			//Ocultar 'menu usuario'
			$('#menu-usuario').animate({opacity:0}, 50).delay(100).hide(0);
			menuEstado = false;
		}
	});
	$("html").click(function(){
		if(menuEstado){
			//Ocultar 'menu usuario'
	    	$("#menu-usuario").animate({opacity:0}, 50).delay(100).hide(0);
			menuEstado = false;
		}
	});
	$(".ajuste-cont, #menu-usuario").click(function (e){
		e.stopPropagation();
	});
	//Menu sitio web
	$('.logotipo i').click(function (){
		//Comprobacion si no tiene puesta la clase "active"
		if(!$('.logotipo i').hasClass('active')){
			$(this).css('color','#00e673');
			//Mostrar sección menu
			$('.izq-cont').show(0).animate({
				opacity:1
			}, 10);
			//Movilizar el menu (disponible)
			$('.izq-fondo').animate({
				left: '0',
			}, 100, function(){
				$(this).animate({
					opacity: 1
				}, 100)
			});
			setTimeout(function (){
				//Agregamos flecha del 'boton menu sitio web'
				$('.logotipo i').addClass('active');
			}, 280);
		} else{
			$(this).css('color','#666');
			//Ocultar sección menu
			$('.izq-cont').animate({opacity:0}, 50).delay(1000).hide(0);
			//Movilizar el menu de retorno (indisponible)
			$('.izq-fondo').animate({
				left: '-100%'
			}, 100, function (){
				$(this).animate({
					opacity: 0
				}, 100)
			});
			setTimeout(function (){
				//Removemos flecha del 'boton menu sitio web'
				$('.logotipo i').removeClass('active', 1000);
			}, 100);
		}
	});
});