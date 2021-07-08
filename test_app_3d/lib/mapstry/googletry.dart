import 'package:flutter/material.dart';
import 'package:test_app_3d/mapstry/screen.dart';


class Homepaged extends StatelessWidget {
  const Homepaged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Map Screen")),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/aa.png"),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "GOOGLE MAPS",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleMapScreen())),
        tooltip: "Increment",
        child: Icon(Icons.pin_drop_outlined),

      ),
    );
  }
}
