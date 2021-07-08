

import 'package:flutter/material.dart';
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
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/harita.png"
            ),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}





//BU KODLAR ÇALIŞIYOR FAKAT HER HANGİ
// BĞİR REQUEST ATTIĞIMDA KABUL
// ETMİYOR ÇÜNKÜ BÖYLE BİR METOD
// İÇİNDE BUILD CONTEXT OLMAZSA
// SİZİ ORAYA ÇEKEMİYOR BUILD CONT TANIMLAYINCADA NULL
// NOT REQUIRED YAPIYORUM NULL HATASI VERIYOR NULL
// DEGER MI DEGIL MI SORUYORUM BU SEFERDE TEKRARDAN
// N NAVIGATOR KULLANINCA REQ HATASI VERİYOR
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

  Widget buildBurgers() => Row(
    children: [
      Expanded(child: buildBurger()),
      const SizedBox(width: 12),
      Expanded(child: buildBurger()),
    ],
  );

  Widget buildBurger({BuildContext? context}) {
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








