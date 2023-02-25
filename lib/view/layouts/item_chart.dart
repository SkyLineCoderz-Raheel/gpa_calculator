/// Package import
import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

/// Local imports
import '../../../../../model/sample_view.dart';

/// Render the radial series with legend.
class OverfilledRadialBar extends SampleView {
  /// Creates the radial series with legend.

  @override
  _OverfilledRadialBarState createState() => _OverfilledRadialBarState();
}

/// State class of radial series with legend.
class _OverfilledRadialBarState extends SampleViewState {
  _OverfilledRadialBarState();
  TooltipBehavior? _tooltipBehavior;
  List<_ChartData>? chartData;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    chartData = <_ChartData>[
      _ChartData(
          '', 3500,  Color(0xff00B4D8), ''),
      _ChartData('', 7200,
           Color(0xff0077B6), ''),
      _ChartData('', 10500,
           Color(0xff023E8A), ''),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildAngleRadialBarChart();
  }

  /// Retunrs the circular charts with radial series.
  SfCircularChart _buildAngleRadialBarChart() {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return SfCircularChart(
        key: GlobalKey(),
        legend: Legend(
            toggleSeriesVisibility: false,
            iconHeight: 10,
            iconWidth: 10,
            overflowMode: LegendItemOverflowMode.wrap),
        annotations: <CircularChartAnnotation>[
          CircularChartAnnotation(
            angle: 0,
            radius: '0%',
            height: '20%',
            width: '55%',
            widget: Column(
              children: <Widget>[
                Center(
                  child: Text('2.53 GPA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:12.sp)),
                ),

              ],
            ),
          ),
        ],
        series: _getRadialBarSeries(),
        tooltipBehavior: _tooltipBehavior,
        onTooltipRender: (TooltipArgs args) {
          final NumberFormat numberFormat = NumberFormat.compactCurrency(
            decimalDigits: 2,
            symbol: '',
          );
          // ignore: cast_nullable_to_non_nullable
          args.text = chartData![args.pointIndex as int].text +
              ' : ' +
              numberFormat
              // ignore: cast_nullable_to_non_nullable
                  .format(chartData![args.pointIndex as int].y);
        });
  }

  /// Returns radial bar series with legend.
  List<RadialBarSeries<_ChartData, String>> _getRadialBarSeries() {
    final List<RadialBarSeries<_ChartData, String>> list =
    <RadialBarSeries<_ChartData, String>>[
      RadialBarSeries<_ChartData, String>(
          maximumValue: 6000,
          radius: '70%',
          gap: '1%',
          dataSource: chartData,
          cornerStyle: CornerStyle.bothCurve,
          xValueMapper: (_ChartData data, _) => data.x,
          yValueMapper: (_ChartData data, _) => data.y,
          pointColorMapper: (_ChartData data, _) => data.color,
          dataLabelMapper: (_ChartData data, _) => data.text,
          dataLabelSettings: const DataLabelSettings(isVisible: true))
    ];
    return list;
  }

  @override
  void dispose() {
    chartData!.clear();
    super.dispose();
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.color, this.text);

  final String x;
  final num? y;
  final Color  color;
  final String text;
}