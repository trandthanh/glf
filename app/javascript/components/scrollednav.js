const navbar = document.querySelector('.navbar');

const scrolledNav = () => {
  window.addEventListener('scroll', function(e) {
    if (window.pageYOffset > 80) {
      navbar.classList.add("box-shadow-third-black");
    } else {
      navbar.classList.remove("box-shadow-third-black");
    }
  })
}


export { scrolledNav }
