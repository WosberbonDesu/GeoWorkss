import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:test_app_3d/googleaccount/googlehome.dart';
import 'package:test_app_3d/googleaccount/googlelogin.dart';
import 'package:test_app_3d/googleaccount/services/auth_blocs.dart';
import 'package:test_app_3d/home_page.dart';
import 'package:test_app_3d/homepagenew/newhome.dart';
import 'package:test_app_3d/pages/homepage.dart';
import 'package:test_app_3d/pages/reset.dart';
import 'package:test_app_3d/pages/verify.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late StreamSubscription<User?> loginStateSubscription;
  String? _email, _password;
  final auth = FirebaseAuth.instance;


  @override

  void initState(){

    var authBloc = Provider.of<AuthBloc>(context,listen: false);
    loginStateSubscription = authBloc.currentUser.listen((fbUser) {
      if(fbUser != null){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => GoogleHome(),
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
      appBar: AppBar(automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade800,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.brightness_1,color: Colors.white,),
                onPressed: null,
              ),
              //IconButton(
                //icon: Icon(Icons.map_outlined,color: Colors.white,),
                //onPressed: null,
              //),
              IconButton(
                icon: Icon(Icons.brightness_1,color: Colors.white,),
                onPressed: null,
              ),
            ],
          )),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/nevk.png"
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.grey.shade800),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined,color: Colors.grey.shade800,),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.grey.shade800)
                  ),
                    border: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey.shade800)
                ),
                onChanged: (value) {
                  setState((
                      ) {
                    _email = value.trim();
                  }
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.grey.shade800),
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.grey.shade800,),
                    labelStyle: new TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey.shade800)
                    ),
                    border: new OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    hintStyle: TextStyle(color: Colors.grey.shade800)),
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),

            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  ElevatedButton(

                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey.shade800,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                          )
                      ),
                      child: Text('Sign in'),
                      onPressed: () => _signin(_email!, _password!)
                    /*{
                        auth.signInWithEmailAndPassword(email: _email!, password: _password!).then((_){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePageq()));
                        });

                      }
                      */
                      ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade800,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      )
                    ),

                    child: Text('Sign up'),
                    onPressed: () => _signup(_email!, _password!) /*{
                      auth.createUserWithEmailAndPassword(email: _email!, password: _password!).then((_){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => VerifyScreen()));
                      });

                    },
                    */
                  ),

                ]
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetScreen(),
                        ));
                  },
                  child: Center(
                    child: Text(
                      "Forgot password? ",
                      style: TextStyle(
                        fontSize: 15.5,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SignInButton(

                  Buttons.AppleDark,
                  mini: true,
                  onPressed: ()
                  {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>GoogleLogin()));
                  },
                ),

                SignInButton(
                  Buttons.GitHub,
                  mini: true,
                  onPressed: ()
                  {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>GoogleLogin()));
                  },
                ),
              ],
            ),
            SizedBox(height: 260,),
            SignInButton(
              Buttons.GoogleDark,

                onPressed: () => authBloc.loginGoogle()
            ),





          ],
        ),
      ),

    );
  }
  _signin(String? _email, String? _password)async{
    try{
      await auth.signInWithEmailAndPassword(email: _email!, password: _password!);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Yenianasayf()));
    }on FirebaseAuthException catch (error){

      Fluttertoast.showToast(msg: "${error.message}", gravity: ToastGravity.TOP);
    }

  }
  _signup(String? _email, String? _password)async{
    try{
      await auth.createUserWithEmailAndPassword(email: _email!, password: _password!);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Yenianasayf()));
    }on FirebaseAuthException catch (error){

      Fluttertoast.showToast(msg: "${error.message}", gravity: ToastGravity.TOP);
    }

  }
}