import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import 'select2/dist/css/select2.css';


import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initNotification } from '../plugins/init_notification';
import { initVideo } from '../plugins/init_video';
import { loadDynamicBannerText } from '../components/banner';
import { initSelect2 } from '../plugins/init_select2';


initMapbox();
initAutocomplete();
initNotification();
initVideo();
loadDynamicBannerText();
initSelect2();
