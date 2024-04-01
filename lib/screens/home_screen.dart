import 'package:flowmodoro_app/components/clock.dart';
import 'package:flowmodoro_app/components/day_row_heatmap.dart';
import 'package:flowmodoro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flowmodoro'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [],
      ),
      backgroundColor: kBackgroundColor,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Clock(),
          SizedBox(height: 65),
          Text(
            '3 / 4',
            style: kTitleTextStyle,
          ),
          SizedBox(height: 10),
          Text(
            'Flows today',
            style: kBodyTextStyle,
          ),
          SizedBox(height: 65),
          SizedBox(
            width: 220,
            child: Text(
              '"Lorem ipsum dolor sit amet, consectur similis."',
              style: kSubHeadingTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 65),
          DayRowHeatmap(),
        ],
      ),
    );
  }
}
