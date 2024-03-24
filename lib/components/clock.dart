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
            width: 240,
            height: 240,
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
                value: 0.5,
                strokeWidth: 14,
              ),
            ),
          ),
          Text(
            '0:00',
          ),
        ],
      ),
    );
  }
}
