import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAnx019ns9tyZ6kDrduAH6wWSnAFR_DkcY",
            authDomain: "test-3aadd.firebaseapp.com",
            projectId: "test-3aadd",
            storageBucket: "test-3aadd.appspot.com",
            messagingSenderId: "1076206231810",
            appId: "1:1076206231810:web:9043d2fe9065bcd6ac621b",
            measurementId: "G-9J05D464R6"));
  } else {
    await Firebase.initializeApp();
  }
}
