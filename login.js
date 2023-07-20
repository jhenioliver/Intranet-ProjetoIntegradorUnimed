//Funcao mostrar senha 
let container = document.querySelector('.divPass');
let input = document.querySelector('#senha');
let icon = document.querySelector('.olho');

icon.addEventListener('click', function() {
	container.classList.toggle('visible');
	if(container.classList.contains('visible')) {

		icon.src = 'img/eye-off.png';
		input.type = 'text';

	} else {
		icon.src = 'img/eye-on.png';
		input.type = 'password';
	} 
});