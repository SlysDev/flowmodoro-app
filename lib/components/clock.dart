import 'package:flowmodoro_app/constants.dart';
import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 250,
            height: 250,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: kPrimaryColor, // Adjust color as needed
                  width: 14.0, // Adjust outline width as needed
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 180,
              height: 180,
              child: CircularProgressIndicator(
                value: 1,
                strokeWidth: 14,
                color: kLightPrimaryColor,
              ),
            ),
          ),
          Text(
            '0:00',
            style: kTitleTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
