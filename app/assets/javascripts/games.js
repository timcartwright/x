var gameMap = function() {
  
  var map;
  var mapOptions;
  var clicked = false;

  $('#new-location').click( function(event) {
    event.preventDefault();
    if (!clicked) {
      newLocation();
    };
  });


  if (document.getElementById('game-map')) {
    renderGameMap();
  };

  function renderGameMap() {
    
    var locations = $('.locations_class').data('locations');
    if (locations.length === 0) { return };
    
    var zValue = 12;

    var myLatlng = new google.maps.LatLng(locations[0].lat,locations[0].long);

    mapOptions = {
      zoom: zValue,
      center: myLatlng
    };

    map = new google.maps.Map(document.getElementById('game-map'),mapOptions);
    var contentString = [];

    for(var i=0; i<locations.length; i++) {
      contentString[i] =
        '<div id="content">'+
          '<div id="siteNotice">'+
          '</div>'+
          '<h5>'+
            locations[i].name +
          '</h5>'+
          '<div id="bodyContent">'+
            locations[i].description +
          '</div>'+
        '</div>';

      myLatlng = new google.maps.LatLng(locations[i].lat,locations[i].long);

      var marker = new google.maps.Marker({
        icon: 'http://maps.google.com/mapfiles/ms/icons/red-dot.png',
        position: myLatlng,
        map: map,
        title: locations[i].name
      });

      var infowindow = new google.maps.InfoWindow(), marker, i;

      google.maps.event.addListener(marker, 'click', function(i) {
        console.log(contentString[i]);
        infowindow.setContent(contentString[i]);
        infowindow.open(map, this);
      });
    };
  };

  function newLocation() {

    clicked = true;

    var marker = new google.maps.Marker({
      icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
      position: mapOptions.center,
      map: map,
      draggable: true
    });

    google.maps.event.addListener(marker, 'dragend', function(evt) {
      $('#location_lat').val(evt.latLng.lat());
      $('#location_long').val(evt.latLng.lng());
      $('#lat > label').addClass('active');
      $('#long > label').addClass('active');
    });
  };

}

$(document).ready(gameMap);

