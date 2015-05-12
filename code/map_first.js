function initialize() {
  var myLatlng = //grab lat-long of current venue
  var my_venue = //grab the venue name
  var mapOptions = {
    //map options here
  };
  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
  var marker = new google.maps.Marker({
  position: myLatlng,
  map: map,
  title: my_venue
  });
}
google.maps.event.addDomListener(window, 'load', initialize);