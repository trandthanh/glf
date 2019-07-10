import "bootstrap";
import "jquery";

import { sideNav } from '../components/sidenav'
import { scrolledNav } from '../components/scrollednav'


if (document.querySelector(".navbar-mobile")) {
  sideNav();
}

if (document.querySelector(".navbar")) {
  scrolledNav();
}
