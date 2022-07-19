import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  final Color? valueColor;
  final Color? backgroundColor;
  final double value;

  final double lineHeight;

  final bool showBorder;

  ProgressBar({Key? key, this.valueColor, this.lineHeight = 5, this.showBorder = true, this.backgroundColor, this.value=0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(this.showBorder ? 2 : 0),
      decoration: this.showBorder ? BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(width: 1, color: const Color(0xffcecece))) : null,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: this.lineHeight,
          child: LinearPercentIndicator(
            lineHeight: this.lineHeight,
            padding: null,
            linearStrokeCap: LinearStrokeCap.roundAll,
            percent: this.value,
            // percent filled
            progressColor: this.valueColor,
            backgroundColor: this.backgroundColor,
          ),
        ),
      ),
    );
  }
}
