import 'package:flowmodoro_app/constants.dart';
import 'package:flutter/material.dart';

class DayRowHeatmap extends StatelessWidget {
  const DayRowHeatmap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        HeatmapTile(
          isActive: true,
        ),
        HeatmapTile(
          isActive: true,
        ),
        HeatmapTile(
          isActive: true,
        ),
        HeatmapTile(
          isActive: true,
        ),
        HeatmapTile(
          isActive: false,
        ),
        HeatmapTile(
          isActive: false,
        ),
        HeatmapTile(
          isActive: false,
        ),
      ],
    ));
  }
}

class HeatmapTile extends StatelessWidget {
  bool isActive;
  bool isToday;
  Color color;
  // DateTime date;
  HeatmapTile({
    super.key,
    this.isActive = false,
    this.isToday = false,
    // required this.date,
    this.color = kDarkPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : color,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '3/24',
          style: kBodyTextStyle,
        ),
      ],
    );
  }
}
