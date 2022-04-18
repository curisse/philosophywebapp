console.log('Hello from application.js')


const navSlide = () => {

	const navButton = document.querySelector('.nav-button');
	const nav = document.querySelector('.btn')
	const navLinks = document.querySelectorAll('.btn');

	navButton.addEventListener('click', () => {
		nav.classList.toggle('nav-active');
		//this toggles the nav
		navLinks.forEach((link, index)=> {
			
			//this provides a fading animation for the links
			if(link.style.animation) {
				link.style.animation = '';

			} else {
			link.style.animation = `navLinkFace 0.5 ease forwards ${index / 7 + 1.5}s`;
			}
		});
		
		//this animates the nav button
		nav-button.classList.toggle('toggle');

	});
};

navSlide();

console.log("Swag")