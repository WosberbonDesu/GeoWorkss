import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:provider/provider.dart';
import 'package:test_app_3d/googleaccount/services/auth_blocs.dart';
import 'package:test_app_3d/home_page.dart';
import 'package:test_app_3d/homepagenew/newhome.dart';
import 'package:test_app_3d/pages/login.dart';

class GoogleHome extends StatefulWidget {
  const GoogleHome({Key? key}) : super(key: key);

  @override
  _GoogleHomeState createState() => _GoogleHomeState();
}

class _GoogleHomeState extends State<GoogleHome> {

  late StreamSubscription<User?> loginStateSubscription;

  @override
  void initState(){

    var authBloc = Provider.of<AuthBloc>(context,listen: false);
    loginStateSubscription = authBloc.currentUser.listen((fbUser) {
      if(fbUser == null){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginScreen(),
            )
        );
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    loginStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBloc>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/desk.png",
              ),
              fit: BoxFit.cover,
            )
        ),
        child: Center(
          child: StreamBuilder<User?>(
            stream: authBloc.currentUser,
            builder: (context, snapshot) {
              if(!snapshot.hasData) return CircularProgressIndicator();
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(snapshot.data!.displayName!,
                    style: TextStyle(
                      fontSize: 35.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data!.photoURL!.replaceFirst("s96", "s400")),
                    radius: 60.0,
                  ),
                  SizedBox(height: 100.0,),
                  SignInButton(Buttons.GoogleDark,text: "Sign Out of Google", onPressed: (){
                    authBloc.logout();
                  }),
                  SizedBox(height: 20,),
                  /*SignInButton(Buttons.AppleDark,text: "Ana Sayfaya Git", onPressed: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=>Yenianasayf())
                    );
                  }),

                   */
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context)=>Yenianasayf())
                      );
                    },
                    icon: Image.asset("images/olk.png",height: 100,),

                    splashColor: Colors.redAccent,
                    iconSize: 120.0,
                    tooltip: "Hellö",
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}

