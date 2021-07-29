import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_app_3d/pages/homepage.dart';


class VerifyScreen extends StatefulWidget {


  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final auth = FirebaseAuth.instance;
  User? user;
  Timer? timer;

  @override
  void initState() {
    // TODO: implement initState
    user = auth.currentUser;
    user!.sendEmailVerification();
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer!.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Onaylama kodunuz bu adrese ${user!.email}"),
            Text("gönderilmiştir lütfen doğrulayınız."),
          ],
        )
      ),
    );
  }

  Future<void> checkEmailVerified() async{
    user = auth.currentUser;
    await user!.reload();
    if(user!.emailVerified){
      timer!.cancel();
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePageq()));
    }
  }
}


