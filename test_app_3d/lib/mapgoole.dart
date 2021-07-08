import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:test_app_3d/location.dart';
import 'package:latlong2/latlong.dart';



class GoogleMap extends StatefulWidget {
  const GoogleMap({Key? key}) : super(key: key);

  @override
  _GoogleMapState createState() => _GoogleMapState();
}

class _GoogleMapState extends State<GoogleMap> {

  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/berkecan/ckqtoel3c5r6618pdp7jtu8jf/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYmVya2VjYW4iLCJhIjoiY2txdG4zNTNhMDE1aDJubW0zc2t3dWMxbiJ9.WDUP5j3sSrdR71sPH-0qGg",
            additionalOptions: {
              'accessToken': 'pk.eyJ1IjoiYmVya2VjYW4iLCJhIjoiY2txdG4zNTNhMDE1aDJubW0zc2t3dWMxbiJ9.WDUP5j3sSrdR71sPH-0qGg',
              'id': 'mapbox.mapbox-streets-v8'
            }
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(51.5, -0.09),
              builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      color: Color(0xFF4a4a58),
                      iconSize: 45.0,
                      onPressed: (){

                      },

                    ),
                  ),
            ),
          ],
        ),
      ],
    );
  }

}
