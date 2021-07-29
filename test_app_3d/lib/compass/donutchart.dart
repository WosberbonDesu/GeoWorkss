import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:test_app_3d/compass/pageforcharts.dart';
import 'package:test_app_3d/homepagenew/newhome.dart';


class donatss extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: donutt(title: 'Flutter Demo Home Page'),
    );
  }
}

class donutt extends StatefulWidget {
  donutt({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _donuttState createState() => _donuttState();
}

class _donuttState extends State<donutt> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("ESKISEHIR GDP COMPARASION"),
              backgroundColor: Colors.black,
              leading: IconButton(
                  onPressed: (){
                    Navigator.of(context)
                        .pushReplacement(
                        MaterialPageRoute(builder: (context) => Yenianasayf())
                    );
                  },
                  icon: Icon(Icons.arrow_back)
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "images/tink.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: SfCircularChart(
                title:
                ChartTitle(text: 'City wise GDP - 2021 \n Turkey(in billions of USD)'),
                legend:
                Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                tooltipBehavior: _tooltipBehavior,
                series: <CircularSeries>[
                  DoughnutSeries<GDPData, String>(
                      dataSource: _chartData,
                      xValueMapper: (GDPData data, _) => data.continent,
                      yValueMapper: (GDPData data, _) => data.gdp,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                      enableTooltip: true,
                      )
                ],
              ),
            )));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Kocaeli', 52),
      GDPData('Eskişehir', 15),
      GDPData('İstanbul', 239),
      GDPData('Ankara', 85),
      GDPData('İzmir', 84),
      GDPData('Bursa', 46),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}