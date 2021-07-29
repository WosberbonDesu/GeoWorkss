import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:test_app_3d/home_page.dart';
import 'package:test_app_3d/instance.dart';
import 'package:test_app_3d/location.dart';
import 'package:test_app_3d/pages/homepage.dart';
import 'package:test_app_3d/pages/polylines.dart';

import '../mapgoole.dart';

class bingog extends StatelessWidget {
  String? image;
  String? text;
  Color? color;


  bingog({this.image, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .pushReplacement(
            MaterialPageRoute(builder: (context) => MapView()
            ));
      },
      child: Container(
        height: 177,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF4A4A58).withOpacity(0.5),
        ),
        child: Column(
          children: [
            Image.asset(
              image!,
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text!,
              style: TextStyle(color: color, fontSize: 18),
            ),
          ],
        ),
      ),

    );
  }
}

class max extends StatelessWidget {

  String? text;
  Color? color;


  max({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .pushReplacement(
            MaterialPageRoute(builder: (context) => LocationApp()
            ));
      },
      child: Container(
        height: 177,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF4A4A58).withOpacity(0.5),
        ),
        child: Column(
          children: [
            IconButton(
                onPressed: (){
                  Navigator.of(context)
                      .pushReplacement(
                      MaterialPageRoute(builder: (context)=>LocationApp())
                  );
                },
                icon: const Icon(Icons.add_location),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text!,
              style: TextStyle(color: color, fontSize: 18),
            ),
          ],
        ),
      ),

    );
  }
}


class vania extends StatelessWidget {
  String? image;
  String? text;
  Color? color;


  vania({this.image, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .pushReplacement(
            MaterialPageRoute(builder: (context) => WebViewLocal()
            ));
      },
      child: Container(
        height: 177,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF4A4A58).withOpacity(0.5),
        ),
        child: Column(
          children: [
            Image.asset(
              image!,
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text!,
              style: TextStyle(color: color, fontSize: 18),
            ),
          ],
        ),
      ),

    );
  }
}



class nelp extends StatelessWidget {
  String? image;
  String? text;
  Color? color;


  nelp({this.image, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .pushReplacement(
            MaterialPageRoute(builder: (context) => HomePagerr()

            ));
      },
      child: Container(
        height: 177,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF4A4A58).withOpacity(0.5),
        ),
        child: Column(
          children: [
            Image.asset(
              image!,
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text!,
              style: TextStyle(color: color, fontSize: 18),
            ),
          ],
        ),
      ),

    );
  }
}


class klassna extends StatelessWidget {
  String? image;
  String? text;
  Color? color;


  klassna({this.image, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .pushReplacement(
            MaterialPageRoute(builder: (context) => HomePage()

            ));
      },
      child: Container(
        height: 177,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF4A4A58).withOpacity(0.5),
        ),
        child: Column(
          children: [
            Image.asset(
              image!,
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text!,
              style: TextStyle(color: color, fontSize: 18),
            ),
          ],
        ),
      ),

    );
  }
}
