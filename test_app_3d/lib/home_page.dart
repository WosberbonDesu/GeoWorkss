import 'package:flutter/material.dart';
import 'package:test_app_3d/drawer/navigation_drawer_widget.dart';
import 'package:test_app_3d/finaldirectory/usera.dart';

import 'package:test_app_3d/glowing_button.dart';
import 'package:test_app_3d/homepagenew/newhome.dart';




class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      resizeToAvoidBottomInset: false,
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

        title: Center(child: const Text("Settings")),
        backgroundColor: Colors.grey.shade800,
      ) ,

      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/greyy.png"
            ),
            fit: BoxFit.cover,
          )
        ),



        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            //Padding(
              //padding: const EdgeInsets.all(8.0),
              //child: GlowingButton(
                //color1: Colors.orange,
                //color2: Colors.red,
              //),
            //),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: GlowingButton(
                    color1: Colors.orange,
                    color2: Colors.red,
                    ),
                  ),
                Text("Location    ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24

                  ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GlowingButton(
                    color1: Colors.pinkAccent,
                    color2: Colors.indigoAccent,
                  ),
                ),
                Text("Wifi           ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24

                ),)

              ],

            ),

            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GlowingButton(

                  ),
                ),
                Text("Night Light",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),)
              ],
            ),

             */



            /*Center(


              child: ElevatedButton(


                child: Text('GPS için'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LocationApp()));
                },
                style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ),

             */
            /*ElevatedButton(


              child: Text('Harita'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mappeer()));
              },
              style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),*/
            IconButton(
                onPressed: (){
                  Navigator.of(context)
                      .pushReplacement(
                      MaterialPageRoute(
                      builder: (context)=>
                  Yenianasayf())
                  );
                },
                icon: Image.asset("images/olk.png",height: 100,),

              splashColor: Colors.redAccent,
              iconSize: 120.0,
              tooltip: "Hellö",
            ),
            /*Text("Settings",style: TextStyle(
              color: Colors.white,
              fontSize: 36
            ),),

             */
            /*ElevatedButton(


              child: RichText(
                text: TextSpan(


                  children: const <TextSpan>[
                    TextSpan(
                        text: 'MAP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white
                        )
                    ),
                    TextSpan(
                        text: 'V2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.lightBlue,

                        )
                    ),
                  ],
                ),
              ),
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bavnaepomyat()));
              },
              style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),

             */


            /*ElevatedButton(


              child: RichText(
                text: TextSpan(


                  children: const <TextSpan>[
                    TextSpan(
                        text: 'MAP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white
                        )
                    ),
                    TextSpan(
                        text: 'V3',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.lightBlue,

                        )
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homepaged()));
              },
              style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),

             */
            /*ElevatedButton(


              child: RichText(
                text: TextSpan(


                  children: const <TextSpan>[
                    TextSpan(
                        text: 'MAP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white
                        )
                    ),
                    TextSpan(
                        text: 'V4',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.lightBlue,

                        )
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ClickMap()));
              },
              style: ElevatedButton.styleFrom(

                  shape: StadiumBorder(),
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),

             */
            //ElevatedButton(


              //child: RichText(
                //text: TextSpan(


                  //children: const <TextSpan>[
                    //TextSpan(
                        //text: 'MAP',
                        //style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            //fontSize: 20.0,
                           // color: Colors.white
                       // )
                    //),
                    //TextSpan(
                        //text: 'V5',
                        //style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          //fontSize: 20.0,
                          //color: Colors.lightBlue,

                        //)
                    //),
                  //],
               // ),
              //),
              //onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePagerr()));
              //},
              //style: ElevatedButton.styleFrom(

                  //shape: StadiumBorder(),
                  //primary: Colors.red,
                  //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  //textStyle: TextStyle(
                      //fontSize: 20,
                      //fontWeight: FontWeight.bold)),
            //),
            //ElevatedButton(


              //child: RichText(
                //text: TextSpan(


                  //children: const <TextSpan>[
                    //TextSpan(
                        //text: 'MAP',
                        //style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            //fontSize: 20.0,
                            //color: Colors.white
                        //)
                    //),
                    //TextSpan(
                        //text: 'V6',
                        //style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          //fontSize: 20.0,
                          //color: Colors.lightBlue,

                        //)
                    //),
                  //],
                //),
              //),
              //onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewLocal()));
              //},
             // style: ElevatedButton.styleFrom(

                  //shape: StadiumBorder(),
                  //primary: Colors.red,
                  //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  //textStyle: TextStyle(
                      //fontSize: 20,
                      //fontWeight: FontWeight.bold)),
            //),
          ],
        ),
      ),
    );
  }
}