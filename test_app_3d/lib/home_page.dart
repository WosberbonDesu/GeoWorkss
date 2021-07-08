import 'package:flutter/material.dart';
import 'package:test_app_3d/glowing_button.dart';
import 'package:test_app_3d/instance.dart';
import 'package:test_app_3d/location.dart';
import 'package:test_app_3d/map_packagi.dart';
import 'package:test_app_3d/mapgoole.dart';
import 'package:test_app_3d/mapstry/googletry.dart';
import 'package:test_app_3d/mapstry/syncfusion.dart';
import 'package:test_app_3d/pages/map_esk.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Piton AR-GE Main Page"),
        backgroundColor: Colors.red,
      ) ,

      body: Container(


        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Can change to any color you want.
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GlowingButton(
                color1: Colors.orange,
                color2: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GlowingButton(
                color1: Colors.pinkAccent,
                color2: Colors.indigoAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GlowingButton(

              ),
            ),
            SizedBox(height: 10.0,),
            Center(

              child: ElevatedButton(


                child: Text('GPS için'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LocationApp()));
                },
                style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            ElevatedButton(


              child: Text('Harita'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mappeer()));
              },
              style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(


              child: RichText(
                text: TextSpan(


                  children: const <TextSpan>[
                    TextSpan(
                        text: 'MAP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white
                        )
                    ),
                    TextSpan(
                        text: 'V2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.lightBlue,

                        )
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MapView()));
              },
              style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(


              child: RichText(
                text: TextSpan(


                  children: const <TextSpan>[
                    TextSpan(
                        text: 'MAP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white
                        )
                    ),
                    TextSpan(
                        text: 'V3',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.lightBlue,

                        )
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homepaged()));
              },
              style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(


              child: RichText(
                text: TextSpan(


                  children: const <TextSpan>[
                    TextSpan(
                        text: 'MAP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white
                        )
                    ),
                    TextSpan(
                        text: 'V4',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.lightBlue,

                        )
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}