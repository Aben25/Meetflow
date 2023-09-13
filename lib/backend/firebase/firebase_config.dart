import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA4qyiBmtX2QdtfQPJky_x4arg83-NoY2g",
            authDomain: "meet-941d4.firebaseapp.com",
            projectId: "meet-941d4",
            storageBucket: "meet-941d4.appspot.com",
            messagingSenderId: "172469628091",
            appId: "1:172469628091:web:10c36cb3dd98da0cc68d9e",
            measurementId: "G-422DPM8BZ9"));
  } else {
    await Firebase.initializeApp();
  }
}
