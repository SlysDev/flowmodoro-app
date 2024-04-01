import 'dart:async';

import 'package:flutter/widgets.dart';

class TimeProvider extends ChangeNotifier {
  int _time = 0;
  bool isRunning = false;

  int get time => _time;

  void setTime(int time) {
    _time = time;
    notifyListeners();
  }

  void reset() {
    _time = 0;
    notifyListeners();
  }

  void increment() {
    _time++;
    notifyListeners();
  }

  void start() {
    isRunning = true;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (isRunning) {
        increment();
      } else {
        timer.cancel();
      }
    });
  }

  void stop() {
    isRunning = false;
  }

  String toString() {
    String minutes = (_time / 60).toStringAsFixed(0);
    String seconds = (_time % 60) < 10
        ? "0${(_time % 60)}"
        : (_time % 60).toStringAsFixed(0);
    return "$minutes:$seconds";
  }
}
