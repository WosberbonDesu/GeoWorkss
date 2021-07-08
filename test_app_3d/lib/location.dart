import 'dart:math';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationApp extends StatefulWidget {
  const LocationApp({Key? key}) : super(key: key);

  @override
  _LocationAppState createState() => _LocationAppState();

}




class _LocationAppState extends State<LocationApp> {

  var locationmessage = "";
  //double? long;




  void getCurrentLocation()async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);





    setState(() {

      locationmessage = "$position";
      //long = position.longitude;

    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        title: Text(
            "Location Service"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 45.0,
              color: Colors.redAccent,
            ),
            SizedBox(height: 10.0,),
            RichText(
              text: TextSpan(
                text: 'GET ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                      text: 'USER',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26.0,
                          color: Colors.white
                      )
                  ),
                  TextSpan(
                      text: ' LOCATION',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                        color: Colors.blue,

                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Center(
              child: Text(
                  locationmessage  //long.toString()
              ),
            ),

            TextButton(
              onPressed: (){
                getCurrentLocation();
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: Text("Get Current Location",style: TextStyle(
                  color: Colors.white
              ),),
            )
            //Text(
            //"Get user Location",
            //style: TextStyle(
            //fontSize: 26.0,
            //color: Colors.blue.shade700,
            //fontWeight: FontWeight.bold,

            //),
            //),
          ],
        ),
      ),
    );
  }
}

