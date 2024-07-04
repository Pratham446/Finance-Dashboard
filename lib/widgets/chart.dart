import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartComponent extends StatelessWidget {
  const BarChartComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        gridData: FlGridData(
          drawHorizontalLine: true,
          horizontalInterval: 30,
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
              getTitlesWidget: (value, meta) {
                const style = TextStyle(color: Colors.grey, fontSize: 12);
                Widget text;
                switch (value.toInt()) {
                  case 0:
                    text = const Text('0', style: style);
                    break;
                  case 30:
                    text = const Text('30k', style: style);
                    break;
                  case 60:
                    text = const Text('60k', style: style);
                    break;
                  case 90:
                    text = const Text('90k', style: style);
                    break;
                  default:
                    text = const Text('', style: style);
                    break;
                }
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  child: text,
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                const style = TextStyle(color: Colors.grey, fontSize: 12);
                Widget text;
                switch (value.toInt()) {
                  case 0:
                    text = const Text('JAN', style: style);
                    break;
                  case 1:
                    text = const Text('FEB', style: style);
                    break;
                  case 2:
                    text = const Text('MAR', style: style);
                    break;
                  case 3:
                    text = const Text('APR', style: style);
                    break;
                  case 4:
                    text = const Text('MAY', style: style);
                    break;
                  case 5:
                    text = const Text('JUN', style: style);
                    break;
                  case 6:
                    text = const Text('JUL', style: style);
                    break;
                  case 7:
                    text = const Text('AUG', style: style);
                    break;
                  case 8:
                    text = const Text('SEP', style: style);
                    break;
                  case 9:
                    text = const Text('OCT', style: style);
                    break;
                  case 10:
                    text = const Text('NOV', style: style);
                    break;
                  case 11:
                    text = const Text('DEC', style: style);
                    break;
                  default:
                    text = const Text('', style: style);
                    break;
                }
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  child: text,
                );
              },
            ),
          ),
        ),
        barGroups: _getBarGroups(context),
      ),
      swapAnimationDuration: const Duration(milliseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }

  List<BarChartGroupData> _getBarGroups(BuildContext context) {
    return [
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
            toY: 10,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            toY: 50,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
            toY: 30,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
            toY: 80,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barRods: [
          BarChartRodData(
            toY: 70,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barRods: [
          BarChartRodData(
            toY: 20,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barRods: [
          BarChartRodData(
            toY: 90,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 7,
        barRods: [
          BarChartRodData(
            toY: 60,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 8,
        barRods: [
          BarChartRodData(
            toY: 90,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 9,
        barRods: [
          BarChartRodData(
            toY: 10,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 10,
        barRods: [
          BarChartRodData(
            toY: 40,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 11,
        barRods: [
          BarChartRodData(
            toY: 80,
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
            width: _getBarWidth(context),
            backDrawRodData: BackgroundBarChartRodData(
              toY: 90,
              show: true,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
    ];
  }

  double _getBarWidth(BuildContext context) {
    return MediaQuery.of(context).size.width > 600 ? 40 : 10; // Adjust width based on screen size
  }
}
