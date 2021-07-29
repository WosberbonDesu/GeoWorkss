import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';



class barraa extends StatelessWidget {
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
      home: barcarth(title: 'Flutter Demo Home Page'),
    );
  }
}

class barcarth extends StatefulWidget {
  barcarth({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _barcarthState createState() => _barcarthState();
}

class _barcarthState extends State<barcarth> {
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
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/pinko.png"
                ),
                fit: BoxFit.cover
              )
            ),
            child: SfCartesianChart(
              title: ChartTitle(text: 'Country wise GDP - 2021'),
              legend: Legend(isVisible: true),
              tooltipBehavior: _tooltipBehavior,
              series: <ChartSeries>[
                BarSeries<GDPData, String>(
                    name: 'GDP',
                    dataSource: _chartData,
                    xValueMapper: (GDPData gdp, _) => gdp.continent,
                    yValueMapper: (GDPData gdp, _) => gdp.gdp,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true)
              ],
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
                  title: AxisTitle(text: 'GDP in Trillion&billions of U.S. Dollars')),
            ),
          ),
        ));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('USA', 226),
      GDPData('China', 166),
      GDPData('Japan', 53),
      GDPData('Germany', 43),
      GDPData('United Kingdom', 31),
      GDPData('France ', 29),
      GDPData('Turkey', 8),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final double gdp;
}