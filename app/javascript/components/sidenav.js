
const sideNav = () => {
  /* Open when someone clicks on the burger element */
  const openNav = () => {
    document.querySelector(".overlay").style.width = "100%";
  }

  /* Close when someone clicks on the "x" symbol inside the overlay */
  const closeNav = () => {
    document.querySelector(".overlay").style.width = "0%";
  }

  document.querySelector("#myNav").addEventListener('click', (event) => {
    openNav();
  })

  document.querySelector(".close").addEventListener('click', (event) => {
    closeNav();
  })
}



export { sideNav }

