
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:test_app_3d/location.dart';
import 'package:test_app_3d/mapgoole.dart';
import 'package:test_app_3d/mapsnearest/application_blocu.dart';


class GugleScreen extends StatefulWidget {
  const GugleScreen({Key? key}) : super(key: key);

  @override
  _GugleScreenState createState() => _GugleScreenState();
}

class _GugleScreenState extends State<GugleScreen> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Lokasyon Ara"
            ),
          ),
          Container(
            height: 300.0,
            child: GoogleMap(
              mapType: MapType.normal,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(39.766193,-30.526714),
                zoom: 14
              ),
            )
          )
        ],
      ),
    );
  }
}
