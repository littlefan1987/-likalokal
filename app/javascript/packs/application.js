import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import swal from 'sweetalert';

import { initMapbox } from '../plugins/init_mapbox';

// import { valide } from '../components/sweetalert';
// valide();

initMapbox();
