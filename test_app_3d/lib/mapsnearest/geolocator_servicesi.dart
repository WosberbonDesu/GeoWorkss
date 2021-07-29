import 'package:geolocator/geolocator.dart';

class GeolocatorServicesi{
  Future<Position?> getCurrentLokation() async{
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    
  }
}