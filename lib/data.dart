import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  int providerValue = 0;

  var name = "Provider Data";

  ProviderValueIncrement() {
    providerValue++;
    print(providerValue);

    notifyListeners();
  }
}
