import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:test_app_3d/location.dart';
import 'package:latlong2/latlong.dart';


class Mappeer extends StatefulWidget {
  const Mappeer({Key? key}) : super(key: key);

  @override
  _MappeerState createState() => _MappeerState();
}

class _MappeerState extends State<Mappeer> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("Piton Ar-Ge Map"),),
      body: Stack(
        children: <Widget>[

           FlutterMap(options: MapOptions(
             minZoom: 10.0,
             center: LatLng(12.00,-122.332)
           ),
           layers: [
             TileLayerOptions(
               urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
               subdomains: ["a","b","c"]
             ),

           ],
           )
        ],
      ),
    );
  }
}
