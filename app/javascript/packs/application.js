import 'bootstrap';
import 'jquery';

import { sideNav } from '../components/sidenav';
import { scrolledNav } from '../components/scrollednav';
import { initMapbox } from '../plugins/init_mapbox';

if (document.querySelector('.navbar-mobile')) {
  sideNav();
}

if (document.querySelector('.navbar')) {
  scrolledNav();
}

$(window).on('load', function () {
  $('#flash-message').fadeOut(1000);
  initMapbox();
});
