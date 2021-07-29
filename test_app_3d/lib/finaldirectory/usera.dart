import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:test_app_3d/homepagenew/newhome.dart';



class pusular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: pusula(),
    );
  }
}

class pusula extends StatefulWidget {
  pusula({Key? key}) : super(key: key);

  @override
  _pusulaState createState() => _pusulaState();
}

class _pusulaState extends State<pusula> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.compass_calibration_rounded),
            ),
          ],
          title: Center(child: const Text("Compass")),
          backgroundColor: Colors.grey.shade800,
        ) ,
        backgroundColor: HSLColor.fromAHSL(1, 0, 0, 0.05).toColor(),
        body: Builder(builder: (context) {
          return Column(
            children: <Widget>[
              Expanded(child: _buildCompass()),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildCompass() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // iphone lar için ama swift yetkilendirmesi yapılmadı aktif olsa bile hatalı çalışabilir
    //var padding = MediaQuery.of(context).padding;
    return StreamBuilder<CompassEvent>(
      stream: FlutterCompass.events,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error reading heading: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        double? direction = snapshot.data!.heading;


        if (direction == null)
          return Center(
            child: Text("Device doesnt have sensors !"),
          );

        int ang = (direction.round());
        return Stack(
          children: [
            SizedBox(height: 39,),
            Text(
              "         $ang  N",
              style: TextStyle(
                color: Color(0xFFEBEBEB),
                fontSize: 56,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEBEBEB),
              ),
              child: Transform.rotate(
                angle: ((direction ?? 0) * (math.pi / 180) * -1),
                child: Image.asset('images/pusula.png'),
              ),
            ),



            Positioned(

              left: (width / 2) - ((width / 80) / 2),

              top: (height - width) / 2,
              child: SizedBox(
                width: width / 80,
                height: width / 10,
                child: Container(

                  color: Color(0xBBEBEBEB),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}