import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for updateName widget.
  FocusNode? updateNameFocusNode;
  TextEditingController? updateNameController;
  String? Function(BuildContext, String?)? updateNameControllerValidator;
  // State field(s) for updateAddress widget.
  FocusNode? updateAddressFocusNode;
  TextEditingController? updateAddressController;
  String? Function(BuildContext, String?)? updateAddressControllerValidator;
  // State field(s) for updateContactNo widget.
  FocusNode? updateContactNoFocusNode;
  TextEditingController? updateContactNoController;
  String? Function(BuildContext, String?)? updateContactNoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    updateNameFocusNode?.dispose();
    updateNameController?.dispose();

    updateAddressFocusNode?.dispose();
    updateAddressController?.dispose();

    updateContactNoFocusNode?.dispose();
    updateContactNoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
