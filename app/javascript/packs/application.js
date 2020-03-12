import "bootstrap";

import { fixFooter } from './plugins/footer';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from './plugins/_init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();
fixFooter();
