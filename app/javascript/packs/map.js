import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
if (mapElement) {
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  console.log(markers)
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

autocomplete();

const mapCampaign = document.getElementById('map-id');
if (mapCampaign) {
  const map = new GMaps({ el: '#map-id', lat: 0, lng: 0 });
  const marker = JSON.parse(mapCampaign.dataset.marker);
  map.addMarkers(marker);

  if (marker.length === 0) {
    map.setZoom(2);
  } else if (marker.length === 1) {
    map.setCenter(marker[0].lat, marker[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(marker);
  }
}
