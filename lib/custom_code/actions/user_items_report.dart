// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

List<dynamic> userItemsReport(
  List<UsersRecord> userList,
  List<OrdersRecord> orderList,
) {
  List<dynamic> jsonList = [];
  int ct1_count = 0;
  int ct2_count = 0;
  int ct3_count = 0;

  userList.forEach((user) {
    if (!user.isDistributor) {
      ct1_count = 0;
      ct2_count = 0;
      ct3_count = 0;
      orderList.forEach((order) {
        if (order.uid == user.reference) {
          ct1_count += order.ct1Count;
          ct2_count += order.ct2Count;
          ct3_count += order.ct3Count;
        }
      });
      String userId = user.reference.toString().split('/')[1];
      jsonList.add({
        'customer_id': userId,
        'customer_name': user.displayName,
        'ct1_count': ct1_count,
        'ct2_count': ct2_count,
        'ct3_count': ct3_count
      });
    }
  });

  return jsonList;
}
