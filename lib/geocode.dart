import 'package:geocoding/geocoding.dart';

class MyLocation {
  final double latitude;
  final double longitude;

  MyLocation({required this.latitude, required this.longitude});
}

Future<MyLocation> getLocation(String address) async {
  var locations = await locationFromAddress(address);
  if (locations.isEmpty)
  {
    throw Exception('Address not found');
  }
  return MyLocation(latitude: locations[0].latitude, longitude: locations[0].longitude);
}

