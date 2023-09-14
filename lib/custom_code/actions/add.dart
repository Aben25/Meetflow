// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future add() async {
  // function to update  firestore document specific filed
// Assuming you have already initialized your Firestore instance and have a reference to the document you want to update

  try {
    await FirebaseFirestore.instance
        .collection('collection_name')
        .doc('document_id')
        .update({'field_name': 'new_value'});
    print('Document updated successfully');
  } catch (e) {
    print('Error updating document: $e');
  }
}
