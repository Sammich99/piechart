import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage > {
  
  int choiceIndex = 0;

  Map<String, double> dataMap = {
    "Food Items": 18.47,
    "Clothes": 17.70,
    "Technology": 4.25,
    "Cosmetics": 3.51,
    "Shoes": 2.83,
    "Books": 9.47,
    "Sport": 10.27,

  }; 
 
  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3ee094),
    const Color(0xff3398f6),
    const Color(0xfffa4A42),
    const Color(0xffFE9539),
  ];

  /* final gradientList = <List<Color>>[
    [
      const Color.fromRGBO(223, 250, 92, 1),
      const Color.fromRGBO(129, 250, 112, 1),
    ],
    [
     const Color.fromRGBO(129, 182, 205, 1),
     const Color.fromRGBO(91, 253, 199, 1),
    ],
    [
     const Color.fromRGBO(175, 63, 62, 1.0),
     const Color.fromRGBO(254, 154, 92, 1),
    ]
  ]; */

  @override
  Widget build(BuildContext context) {

    return Scaffold(
         appBar: AppBar(
          centerTitle: true,
          title: const Text("Pie Chart example"),
         ),
          body: Center(
          child: PieChart(
            dataMap: dataMap,
            colorList: colorList,
            chartRadius: MediaQuery.of(context).size.width/2,
            centerText: "Budget",
            chartType: ChartType.ring,
            ringStrokeWidth: 60,
            animationDuration:  Duration(seconds: 1),
            chartValuesOptions: ChartValuesOptions(
              showChartValues: true,
              showChartValuesOutside: true,
              showChartValuesInPercentage: true,
              showChartValueBackground: false,
            ),
            legendOptions: LegendOptions(
              showLegends: true,
              legendShape: BoxShape.rectangle,
              legendTextStyle: TextStyle(fontSize: 15),
              legendPosition: LegendPosition.bottom,
              showLegendsInRow: true,
              ),
             // gradientList: gradientList,
          ),
        ),
    );
  }
}
