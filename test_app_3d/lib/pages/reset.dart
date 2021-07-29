import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


import 'package:test_app_3d/pages/homepage.dart';


class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  String? _email;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Center(
        child: Text('Parola Sıfırlama',style: TextStyle(
          color: Colors.white,
        ),),
      ),
      backgroundColor: Colors.red,),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black),
                ),
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  ElevatedButton(

                      child: Text('İstek Gönder',style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      onPressed: (){
                        auth.sendPasswordResetEmail(email: _email!);
                        Navigator.of(context).pop();
                      }),
                ]
            ),
          ],
        ),
      ),

    );
  }
}