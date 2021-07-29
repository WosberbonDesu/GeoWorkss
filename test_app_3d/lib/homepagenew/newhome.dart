
import 'package:flutter/material.dart';
import 'package:test_app_3d/finaldirectory/usera.dart';
import 'package:test_app_3d/home_page.dart';
import 'package:test_app_3d/location.dart';
import 'package:test_app_3d/mapstry/syncfusion.dart';
import 'package:test_app_3d/pages/homepage.dart';
import 'package:test_app_3d/trackinglive/a.dart';
import 'package:test_app_3d/trackinglive/c.dart';


import 'newhomepagethin.dart';


class Yenianasayf extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade800,

      bottomNavigationBar: Container(

        height: 80,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: Colors.grey.shade800,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                color: Colors.redAccent,
                iconSize: 40,
                onPressed: (){
                  Navigator.of(context)
                      .pushReplacement(
                      MaterialPageRoute(builder: (context)=>LocationApp())
                  );
                },
                icon: Image.asset("images/ara.png"),
              ),
              IconButton(
                color: Colors.white,
                iconSize: 40,
                onPressed: (){
                  Navigator.of(context)
                      .pushReplacement(
                      MaterialPageRoute(builder: (context)=>pusular())
                  );
                },
                icon: Image.asset("images/held.png"),
              ),
              IconButton(
                color: Colors.redAccent,
                iconSize: 40,
                onPressed: (){
                  Navigator.of(context)
                      .pushReplacement(
                      MaterialPageRoute(builder: (context)=>MapKsreen())
                  );
                },
                icon: Image.asset("images/tell.png"),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Transform.rotate(
                origin: Offset(30, -60),
                angle: 2.4,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 75,
                    top: 40,
                  ),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "images/olk.png",
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Mappel',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ana Sayfaya Hoş Geldin\n tıkla ve keşfet ',
                      style: TextStyle(color: Colors.redAccent, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              bingog(
                                image: 'images/vilde.png',
                                text: 'Find Instance',
                                color: Colors.white,
                              ),
                              klassna(
                                image: 'images/olk.png',
                                text: 'Settings',
                                color: Colors.white,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              nelp(
                                image: 'images/vild.png',
                                text: 'Places',
                                color: Colors.white,
                              ),
                              vania(
                                image: 'images/vera.png',
                                text: 'MAPS',
                                color: Colors.white,
                              ),

                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



