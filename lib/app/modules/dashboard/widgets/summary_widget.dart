import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Summary extends StatefulWidget {
  Summary({
    Key key,
    @required this.chartMap,
    @required this.isLoading,
  }) : super(key: key);

  final Map<String, double> chartMap;
  final bool isLoading;

  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Loan Summary',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.start,
            ),
            widget.isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : PieChart(
                    dataMap: widget.chartMap,
                    animationDuration: Duration(milliseconds: 800),
                    chartLegendSpacing: 32.0,
                    chartRadius: MediaQuery.of(context).size.width / 2.0,
                    showChartValuesOutside: true,
                    chartValueBackgroundColor: Colors.transparent,
                    showLegends: true,
                    colorList: [
                      Color.fromARGB(255, 204, 211, 218),
                      Color.fromARGB(255, 0, 123, 255),
                      Color.fromARGB(255, 0, 38, 69),
                    ],
                    showChartValueLabel: true,
                    initialAngle: -1.55,
                    chartValueStyle: defaultChartValueStyle.copyWith(
                      color: Colors.blueGrey[900].withOpacity(0.9),
                    ),
                    chartType: ChartType.disc,
                  ),
          ],
        ),
      ),
    );
  }
}
