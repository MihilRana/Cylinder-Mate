import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'create_location_widget.dart' show CreateLocationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateLocationModel extends FlutterFlowModel<CreateLocationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for createLocationName widget.
  FocusNode? createLocationNameFocusNode;
  TextEditingController? createLocationNameController;
  String? Function(BuildContext, String?)?
      createLocationNameControllerValidator;
  // State field(s) for createLocationContact widget.
  FocusNode? createLocationContactFocusNode;
  TextEditingController? createLocationContactController;
  String? Function(BuildContext, String?)?
      createLocationContactControllerValidator;
  // State field(s) for createLocationDescription widget.
  FocusNode? createLocationDescriptionFocusNode;
  TextEditingController? createLocationDescriptionController;
  String? Function(BuildContext, String?)?
      createLocationDescriptionControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  LocationsRecord? locationSavedData;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  StocksRecord? stocksSavedResult;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    createLocationNameFocusNode?.dispose();
    createLocationNameController?.dispose();

    createLocationContactFocusNode?.dispose();
    createLocationContactController?.dispose();

    createLocationDescriptionFocusNode?.dispose();
    createLocationDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
