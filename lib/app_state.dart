import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _PageName = '';
  String get PageName => _PageName;
  set PageName(String value) {
    _PageName = value;
  }

  List<String> _MockData = ['Hello World'];
  List<String> get MockData => _MockData;
  set MockData(List<String> value) {
    _MockData = value;
  }

  void addToMockData(String value) {
    MockData.add(value);
  }

  void removeFromMockData(String value) {
    MockData.remove(value);
  }

  void removeAtIndexFromMockData(int index) {
    MockData.removeAt(index);
  }

  void updateMockDataAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    MockData[index] = updateFn(_MockData[index]);
  }

  void insertAtIndexInMockData(int index, String value) {
    MockData.insert(index, value);
  }
}
