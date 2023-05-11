import 'dart:async';
import 'package:flutter/material.dart';

class Providerclass extends ChangeNotifier {
  late Timer time;
  Duration myDuration = Duration(days: 5);
  double Selectedtime = 1500;
  double Currentduration = 1500;
  bool Timerplay = false;
  void selecttime(double Second) {
    Selectedtime = Second;
    Currentduration = Second;
    notifyListeners();
  }

  void start() {
    Timerplay = true;
    final reducesecond = 1;
    //  final seconds;
    time = Timer.periodic(Duration(seconds: 1), (timer) {
      Currentduration--;
      notifyListeners();
    });
  }

  void pause() {
    Timerplay = false;
    time.cancel();
    notifyListeners();
  }

  void reset() {
    Timerplay = false;
    time.cancel();
    Currentduration = Selectedtime = 1500;
    notifyListeners();
  }
}
