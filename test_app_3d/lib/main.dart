import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'dart:async';

import 'package:test_app_3d/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Location Example',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}


