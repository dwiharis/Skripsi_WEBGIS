<html>
<head> 
<title> Google Maps API: Mengubah Alamat Menjadi Latitude Longitude dengan Geocoder </title>
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initialize" async defer></script>
<script type="text/javascript">
function initialize() {
var alamat = "PGC 1, Cililitan, Kec. Kramat jati, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta, Indonesia";
var geocoder = new google.maps.Geocoder;
geocoder.geocode({'address': alamat}, function(results, status) {
  if (status === 'OK') {
	if (results[0]) {
	  geo = results[0].geometry.location;
	  rs = geo.lat()+", "+geo.lng();
	} else {
	  rs = 'No results found';
	}
  } else {
	  rs = 'Geocoder failed due to: ' + status;
  }
	 alert(rs);
});
}
</script>
</head>
<body> </body>
</html>	