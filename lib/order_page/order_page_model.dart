import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/order_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'order_page_widget.dart' show OrderPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderPageModel extends FlutterFlowModel<OrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ct1_qty widget.
  FocusNode? ct1QtyFocusNode;
  TextEditingController? ct1QtyController;
  String? Function(BuildContext, String?)? ct1QtyControllerValidator;
  // State field(s) for ct2_qty widget.
  FocusNode? ct2QtyFocusNode;
  TextEditingController? ct2QtyController;
  String? Function(BuildContext, String?)? ct2QtyControllerValidator;
  // State field(s) for ct3_qty widget.
  FocusNode? ct3QtyFocusNode;
  TextEditingController? ct3QtyController;
  String? Function(BuildContext, String?)? ct3QtyControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Firestore Query - Query a collection] action in place_reservation_btn widget.
  StocksRecord? stockDetails;
  // Stores action output result for [Firestore Query - Query a collection] action in place_reservation_btn widget.
  PricesRecord? prices;
  // Stores action output result for [Custom Action - calculateTotalOrderPrice] action in place_reservation_btn widget.
  double? totalPrice;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    ct1QtyFocusNode?.dispose();
    ct1QtyController?.dispose();

    ct2QtyFocusNode?.dispose();
    ct2QtyController?.dispose();

    ct3QtyFocusNode?.dispose();
    ct3QtyController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
