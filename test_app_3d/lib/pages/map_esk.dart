
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test_app_3d/home_page.dart';


class ClickMap extends StatefulWidget {
  const ClickMap({Key? key}) : super(key: key);

  @override
  _ClickMapState createState() => _ClickMapState();
}

class _ClickMapState extends State<ClickMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        

        child: new Container(

          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).padding.top
          ),
          child: new Padding(
            padding: const EdgeInsets.only(
                left: 30.0,
                top: 20.0,
                bottom: 20.0
            ),
            child: new Text(
              '                        Map Thing',
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),
            ),
          ),
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Colors.grey.shade600,
                    Colors.grey.shade800,
                  ]
              ),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                )
              ]
          ),
        ),
        preferredSize: new Size(
            MediaQuery.of(context).size.width,
            150.0
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/aa.png"
            ),
            fit: BoxFit.cover,
          )
        ),
        child: SizedBox(
          child: GridView.count(
              crossAxisCount: 1,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: 1.0,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())
                  );
                },
                child: Container(
                  child: myGridItems("Dünya Haritası", "https://images.unsplash.com/photo-1526778548025-fa2f459cd5c1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=733&q=80", 0xFF4A4A58, 0xFF6f235f),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())
                  );
                },
                child: Container(

                  child: myGridItems("Dünya Haritası", "https://images.unsplash.com/photo-1526778548025-fa2f459cd5c1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=733&q=80", 0xFF4A4A58, 0xFF6f235f),
                ),
              )
            ],

          )
        ),
      ),
    );
  }
}





Widget myGridItems(String gridName, String gridImage,int color1, int color2){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24.0),
      gradient: new LinearGradient(colors:
      [
        Color(color1),
        Color(color2),
      ],
        begin: Alignment.centerLeft,
        end: new Alignment(1.0, 1.0)
      )
    ),
    child: Stack(
      children: <Widget>[
        Opacity(
            opacity: 0.3,
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: new NetworkImage(
                  gridImage
                ),
                fit: BoxFit.cover,
              )
            ),
          ),
        ),


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text("Job",style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(child: Icon(FontAwesomeIcons.compass,
                    color: Colors.white,
                  ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(child: Text("Guide",style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.0),
            Padding(
                padding: const EdgeInsets.only(left: 16.0),
              child: Text(gridName,style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ],
        )


      ],
    ),
  );
}











//BU KODLAR ÇALIŞIYOR FAKAT HER HANGİ
// BİR REQUEST ATTIĞIMDA KABUL
// ETMİYOR ÇÜNKÜ BÖYLE BİR METOD
// İÇİNDE BUILD CONTEXT OLMAZSA
// SİZİ ORAYA ÇEKEMİYOR BUILD CONT TANIMLAYINCADA NULL
// NOT REQUIRED YAPIYORUM NULL HATASI VERIYOR NULL
// DEGER MI DEGIL MI SORUYORUM BU SEFERDE TEKRARDAN
// N NAVIGATOR KULLANINCA REQ HATASI VERİYOR
// SON GÜNCELLEMEDEN SONRA OLDU BU
// FLUTTER İÇİN ŞUANLIK GENEL BİR SORUN
// BİR SONRAKİ SÜRÜMDE ÇÖZELERLER DİYE UMUYORUM
/*
class ExamplesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
    padding: EdgeInsets.all(16),
    children: [
      buildIcons(),
      const SizedBox(height: 16),
      buildSubject(),
      const SizedBox(height: 16),
      buildBurgers(),
    ],
  );

  Widget buildIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildBox(child: Icon(Icons.location_on)),
        buildBox(child: Icon(Icons.local_drink)),
        buildBox(child: Icon(Icons.icecream)),
        buildBox(child: Icon(Icons.no_meals)),
      ],
    );
  }

  Widget buildBox({required Widget child}) => Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.red.shade200,
    ),
    padding: EdgeInsets.all(8),
    child: child,
  );

  Widget buildSubject() {
    final urlChemistry =
        'https://images.unsplash.com/photo-1569336415962-a4bd9f69cd83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1789&q=80';

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(

          padding: EdgeInsets.all(8),
          color: Colors.black,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  urlChemistry,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Map',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.white30,
                  width: 80,
                  height: 80,
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget brrrrr() => Row(
    children: [
      Expanded(child: buildBurger()),
      const SizedBox(width: 12),
      Expanded(child: buildBurger()),
    ],
  );

  Widget brrrrr({BuildContext? context}) {
    final urlBurger =
        'https://images.unsplash.com/photo-1569336415962-a4bd9f69cd83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1789&q=80';

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(12),
        color: Color(0xFF010101),
        child: Column(

          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Image.network(urlBurger,
                width: 200, height: 200, fit: BoxFit.contain),
            Text(
              'Map',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Mape',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              '\$mappe',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



*/



/*
Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget[ Text("Map",style: TextStyle(
                  color: Colors.red,
                  fontSize: 16.0,
                ),
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            Container(
              child:
              Icon(FontAwesomeIcons.compass,
              color: Colors.white,
              ),
            ),
            SizedBox(width: 10.0,),
            Container(
              child: Text("Deneme",
                style: TextStyle(
                color: Colors.white,
                  fontSize: 16.0,
              ),
              ),
            )
  );
 */




