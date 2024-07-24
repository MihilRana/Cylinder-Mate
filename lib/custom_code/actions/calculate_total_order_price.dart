// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

double calculateTotalOrderPrice(
  double ct1Price,
  int ct1Qty,
  double ct2Price,
  int ct2Qty,
  double ct3Price,
  int ct3Qty,
) {
  // Add your function code here!
  return (ct1Price * ct1Qty) + (ct2Price * ct2Qty) + (ct3Price * ct3Qty);
}
