import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app_3d/googleaccount/services/auth_blocs.dart';
import 'package:test_app_3d/mapsnearest/application_blocu.dart';
import 'package:test_app_3d/pages/login.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context)=> AuthBloc(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Login",
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blue,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
