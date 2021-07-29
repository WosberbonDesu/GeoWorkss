import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapKsreen extends StatefulWidget {
  const MapKsreen({Key? key}) : super(key: key);

  @override
  _MapKsreenState createState() => _MapKsreenState();
}

class _MapKsreenState extends State<MapKsreen> {
  List<Marker> myMarker = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: LatLng(39.766193,30.526714),
        zoom: 14.0,
        ),
        markers: Set.from(myMarker),
        onTap: _handleTap,
        mapType: MapType.hybrid,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
  _handleTap(LatLng tiklanilanNokta){
    setState(() {
      myMarker = [];
      myMarker.add(
        Marker(
          markerId: MarkerId(tiklanilanNokta.toString()),
          position: tiklanilanNokta,
          draggable: true,
          onDragEnd: (dragEndPosition){
            setState(() {
              print(dragEndPosition);
            });
          }
        )
      );
    });
  }
}
