import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// import 'select2/dist/css/select2.css';


import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initNotification } from '../plugins/init_notification';
import { initVideo } from '../plugins/init_video';
import { initDynamicBannerText } from '../plugins/init_dynamicbannertext';
import { initSelect2 } from '../plugins/init_select2';
import { initBookingForm } from '../plugins/init_bookingform';

initMapbox();
initAutocomplete();
initNotification();
initVideo();
initBookingForm();
if (document.querySelector("#banner-typed-text")){
  initDynamicBannerText();
}

initSelect2();
