import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Gameflow extends ChangeNotifier {
  int Idx = 0;

  final List<List<String>> options = [
    ["option 1", "option 2", "option 3"],
    ["option 4", "option 5", "option 6"],
    ["option 7", "option 8", "option 9"],
  ];

  final List<String> contents = [
    "Escolha uma opção",
    "As opções de 1 a 3",
    "As opções de 4 a 6",
  ];

  String _option1 = "";
  String _option2 = "";
  String _option3 = "";
  String _content = "";
  String _data = "";

  String get option1 => _option1;
  String get option2 => _option2;
  String get option3 => _option3;
  String get content => _content;
  String get data => _data;

  set option1(String value) {
    _option1 = value;
    notifyListeners();
  }

  set option2(String value) {
    _option2 = value;
    notifyListeners();
  }

  set option3(String value) {
    _option3 = value;
    notifyListeners();
  }

  set content(String value) {
    _content = value;
    notifyListeners();
  }

  set data(String value) {
    _data = value;
    notifyListeners();
  }

  void selectedOption(String buttonText) {
    data = buttonText;
    debugPrint("option selected: " + data);
    setNext();
  }

  void setStart() {
    _option1 = options[0][0];
    _option2 = options[0][1];
    _option3 = options[0][2];
  }

  void setNext() {
    _option1 = options[Idx][0];
    _option2 = options[Idx][1];
    _option3 = options[Idx][2];
    _content = contents[Idx];
    Idx = (Idx + 1) % options.length;
    debugPrint("option1: " +
        option1 +
        "\noption2: " +
        option2 +
        "\noption3: " +
        option3);
  }
}
