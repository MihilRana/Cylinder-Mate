import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
            authDomain: "cylinderapp-525f4.firebaseapp.com",
            projectId: "cylinderapp-525f4",
            storageBucket: "cylinderapp-525f4.appspot.com",
            messagingSenderId: "244011349873",
            appId: "1:244011349873:web:9c29e3ff26ac432f9468d0",
            measurementId: "G-K49DW7ZTJ9"));
  } else {
    await Firebase.initializeApp();
  }
}
