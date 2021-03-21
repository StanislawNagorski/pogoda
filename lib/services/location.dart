import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude;
  double _longitude;

  double get latitude => _latitude;
  double get longitude => _longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      _latitude = position.latitude;
      _longitude = position.longitude;
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  String toString() {
    return 'Location is: latitude: $_latitude, longitude: $_longitude}';
  }
}
