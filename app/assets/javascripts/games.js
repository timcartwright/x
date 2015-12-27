var map;
var markers = [];
var infowindows = [];
var content = [];
var clicked = false;

var gameMap = function() {
  
  var mapOptions;

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

    map.addListener('click', function(event) {
      if (!clicked) {
        newLocation(event.latLng);
      };
    });

    for (var i = 0; i < locations.length; i++) {
      content[i] =
        '<div id="content">'+
          '<div id="siteNotice">'+
          '</div>'+
          '<h5>'+
            locations[i].name +
          '</h5>'+
          '<div id="bodyContent">'+
            locations[i].description +
          '<p><a href="/games/' + locations[i].game_id + '/locations/' + locations[i].id + '">Go</a></p>' +
          '</div>'+
        '</div>';

      myLatlng = new google.maps.LatLng(locations[i].lat,locations[i].long);

      var marker = new google.maps.Marker({
        icon: 'http://maps.google.com/mapfiles/ms/icons/red-dot.png',
        position: myLatlng,
        map: map,
        title: locations[i].name
      });
      markers.push(marker);

      var infowindow = new google.maps.InfoWindow({
        content: content[i]
      });
      infowindows.push(infowindow);

      google.maps.event.addListener(markers[i], 'click', function(innerKey) {
        return function() {
          infowindows[innerKey].setContent(content[innerKey]);
          infowindows[innerKey].open(map, markers[innerKey]);
        };
      }(i));

    }; // end of for loop
  };

  function newLocation(location) {

    clicked = true;

    var marker = new google.maps.Marker({
      icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
      position: location,
      map: map,
      draggable: true
    });

    markers.push(marker);
    putLocationInForm(location);

    google.maps.event.addListener(marker, 'dragend', function(evt) {
      putLocationInForm(evt.latLng);
    });
  };

  function putLocationInForm(location) {
    $('#location_lat').val(location.lat());
    $('#location_long').val(location.lng());
    $('#lat > label').addClass('active');
    $('#long > label').addClass('active');
  };

}

$(document).ready(gameMap);