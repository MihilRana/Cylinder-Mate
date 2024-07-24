import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  DocumentReference? _distributorLocationId;
  DocumentReference? get distributorLocationId => _distributorLocationId;
  set distributorLocationId(DocumentReference? _value) {
    _distributorLocationId = _value;
  }

  DocumentReference? _distributorStockId;
  DocumentReference? get distributorStockId => _distributorStockId;
  set distributorStockId(DocumentReference? _value) {
    _distributorStockId = _value;
  }
}
