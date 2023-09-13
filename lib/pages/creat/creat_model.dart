import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String title = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for titl widget.
  TextEditingController? titlController;
  String? Function(BuildContext, String?)? titlControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NamesRecord? res;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    titlController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
