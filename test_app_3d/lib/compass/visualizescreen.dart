import 'package:flutter/material.dart';
import 'package:test_app_3d/compass/compass.dart';
import 'package:test_app_3d/compass/donutchart.dart';
import 'package:test_app_3d/compass/gdpmaphtmlcodu.dart';
import 'package:test_app_3d/compass/worldvisualize.dart';
import 'package:test_app_3d/homepagenew/newhome.dart';


class Bavnaepomyat extends StatefulWidget {
  const Bavnaepomyat({Key? key}) : super(key: key);

  @override
  _BavnaepomyatState createState() => _BavnaepomyatState();
}

class _BavnaepomyatState extends State<Bavnaepomyat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
        ],
        title: Center(child: const Text("GDP")),
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

            Text("GDP per capita TURKEY",style: TextStyle(
              color: Colors.yellowAccent,
              fontSize: 24.0
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: (){
                        Navigator.of(context)
                            .pushReplacement(
                            MaterialPageRoute(builder: (context) => donatss())
                        );
                      },
                      icon: Image.asset("images/donatt.png"),
                    splashColor: Colors.redAccent,
                    iconSize: 120.0,
                    tooltip: "Hellö",
                  ),

                ),
                Text("Doughnut    ",
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
                  child: IconButton(
                    onPressed: (){
                      Navigator.of(context)
                          .pushReplacement(
                          MaterialPageRoute(
                              builder: (context)=>
                                  markovvvv())
                      );
                    },
                    icon: Image.asset("images/chart.png",height: 100,),

                    splashColor: Colors.redAccent,
                    iconSize: 120.0,
                    tooltip: "Hellö",
                  ),

                ),
                Text("Radialbar    ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24

                  ),)
              ],
            ),
            Text("World Comparasion",style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 24.0
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: (){
                      Navigator.of(context)
                          .pushReplacement(
                          MaterialPageRoute(
                              builder: (context)=>
                                  barcarth(title: "title"))
                      );
                    },
                    icon: Image.asset("images/bbee.png",height: 100,),

                    splashColor: Colors.redAccent,
                    iconSize: 120.0,
                    tooltip: "Hellö",
                  ),

                ),
                Text("Bar Chart    ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24

                  ),)
              ],
            ),






          ],
        ),
      ),
    );;
  }
}
