import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBZBt7XAT_xDGTgh5TkkaZX_58dT5A2g98",
            authDomain: "b-l-e-io-t-marketplace-55x9n0.firebaseapp.com",
            projectId: "b-l-e-io-t-marketplace-55x9n0",
            storageBucket: "b-l-e-io-t-marketplace-55x9n0.appspot.com",
            messagingSenderId: "828598227130",
            appId: "1:828598227130:web:543dfe91cd2eebb812f283"));
  } else {
    await Firebase.initializeApp();
  }
}
