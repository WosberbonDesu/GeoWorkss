/*
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:test_app_3d/homepagenew/newhome.dart';
import 'b.dart';


class LocationMap extends StatefulWidget {
  @override
  _LocationMapState createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  @override
  void initState() {
    super.initState();
    Provider.of<LocationProvider>(context, listen: false).initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.of(context)
                  .pushReplacement(
                  MaterialPageRoute(builder: (context) => Yenianasayf())
              );
            },
            icon: Icon(Icons.arrow_back)
        ),
        title: Text("Google Map Live Tracking"),
        backgroundColor: Colors.redAccent,
      ),
      body: googleMapUI(),
      // body: Column(
      //   children: [
      //     //_searchBar(),
      //     Expanded(
      //       child: GoogleMap(
      //         mapType: MapType.normal,
      //         myLocationEnabled: true,
      //         myLocationButtonEnabled: true,
      //         initialCameraPosition: CameraPosition(
      //           target: LatLng(28.7041, 77.1025),
      //           zoom: 18,
      //         ),
      //         onMapCreated: (GoogleMapController controller) async {},
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  Widget googleMapUI() {
    return Consumer<LocationProvider>(builder: (consumerContext, model, child) {
      if (model.locationPosition != null) {
        return Column(
          children: [
            Expanded(
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: model!.locationPosition!,
                  zoom: 18,
                ),
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                markers: Set<Marker>.of(model.markers!.values),
                onMapCreated: (GoogleMapController controller) async {
                  Provider.of<LocationProvider>(context, listen: false)
                      .setMapController(controller);
                },
              ),
            ),
          ],
        );
      }

      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    });
  }
}

 */