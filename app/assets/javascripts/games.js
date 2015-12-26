var gameMap = function() {

  if (document.getElementById('game-map')) {
    renderGameMap();
  };

  function renderGameMap() {
    
    var locations = $('.locations_class').data('locations');
    var zValue = 12;

    var myLatlng = new google.maps.LatLng(locations[0].lat,locations[0].long);

    var mapOptions = {
      zoom: zValue,
      center: myLatlng
    };

    var map = new google.maps.Map(document.getElementById('game-map'),mapOptions);
    var marker;

    for(var i=0; i<locations.length; i++) {
      myLatlng = new google.maps.LatLng(locations[i].lat,locations[i].long);
      marker = new google.maps.Marker({
        position: myLatlng,
        map: map
      });
    };
  };

}

$(document).ready(gameMap);