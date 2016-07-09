
function initMap() {
  var myLatLng = {lat: 33.124, lng: -117.325};

  // Create a map object and specify the DOM element for display.
  var map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    scrollwheel: false,
    zoom: 4
  });

  // Create a marker and set its position.
  var marker = new google.maps.Marker({
    map: map,
    position: myLatLng,
    title: 'Verve HQ'
  });
}

function loadScript() {
	console.log("map loading ...");
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyCHe7C--iVaSJ9xPh_Qe9A7888_BgjUl28" +
    '&callback=initMap';
  document.body.appendChild(script);
}
$(document).ready(loadScript);
$(document).on('page:load', loadScript);
