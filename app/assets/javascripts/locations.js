var ready = function() {

  var zValue = 12;
  var lat = -20.3;
  var lng = 57.4;

  var myLatlng = new google.maps.LatLng(lat,lng),

  mapOptions = {
    zoom: zValue,
    center: myLatlng
  },

  map = new google.maps.Map(document.getElementById('map'),mapOptions),

  marker = new google.maps.Marker({
    position: myLatlng,
    map: map,
    draggable: true
  });

  google.maps.event.addListener(marker, 'dragend', function(evt) {
    console.log('Current Latitude:',evt.latLng.lat(),'Current Longitude:',evt.latLng.lng());
    document.getElementById('location_lat').value = evt.latLng.lat();
    document.getElementById('location_long').value = evt.latLng.lng();
  });
}

$(document).ready(ready);