var locationMap = function() {

  if (document.getElementById('new-location-map')) {
    renderNewLocationMap();
  };

  function renderNewLocationMap() {
    var zValue = 12;
    var lat = -20.3;
    var lng = 57.4;

    var myLatlng = new google.maps.LatLng(lat,lng);

    var mapOptions = {
      zoom: zValue,
      center: myLatlng
    };

    var map = new google.maps.Map(document.getElementById('new-location-map'),mapOptions);

    var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      draggable: true
    });

    google.maps.event.addListener(marker, 'dragend', function(evt) {
      console.log('Current Latitude:',evt.latLng.lat(),'Current Longitude:',evt.latLng.lng());
      document.getElementById('location_lat').value = evt.latLng.lat();
      document.getElementById('location_long').value = evt.latLng.lng();
    });
  };
}

$(document).ready(locationMap);