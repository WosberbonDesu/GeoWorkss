import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test_app_3d/mapsnearest/geolocator_servicesi.dart';

class Applicationblocu with  ChangeNotifier{
  final geoLocatorServicesi = GeolocatorServicesi();
  Position? currentLocation;

  Applicationblocu(){
    setCurrentLocation();
  }

  setCurrentLocation() async {
    currentLocation = await geoLocatorServicesi.getCurrentLokation();
    notifyListeners();
  }
}