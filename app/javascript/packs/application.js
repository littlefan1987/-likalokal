import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
$(document).ready(function() {
  $(".alert-success").hide();
  $(".alert-success").fadeTo(2000, 500).slideUp(500, function(){
      $(".alert-success").slideUp(500);
  });
});
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { initSelect2 } from './plugins/init_select2';

initSelect2();
