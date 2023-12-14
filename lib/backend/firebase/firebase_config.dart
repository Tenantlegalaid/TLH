import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAoKJ2PKij2lBhpnxf0WZQ9ZT6RiDnnKTY",
            authDomain: "tenant-legal-aid-vxul31.firebaseapp.com",
            projectId: "tenant-legal-aid-vxul31",
            storageBucket: "tenant-legal-aid-vxul31.appspot.com",
            messagingSenderId: "368253342499",
            appId: "1:368253342499:web:cf966f034d2c47eda93296"));
  } else {
    await Firebase.initializeApp();
  }
}
