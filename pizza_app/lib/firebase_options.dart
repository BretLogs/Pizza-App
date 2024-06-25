// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAVAc-KA704Edp75LYMqaLHq3iKJ8P9zeM',
    appId: '1:476779142513:web:7da2862413028156fdead0',
    messagingSenderId: '476779142513',
    projectId: 'lezgowsagow-dc07f',
    authDomain: 'lezgowsagow-dc07f.firebaseapp.com',
    databaseURL: 'https://lezgowsagow-dc07f.firebaseio.com',
    storageBucket: 'lezgowsagow-dc07f.appspot.com',
    measurementId: 'G-JG3JY1QR0F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFp4CnlVt8xhsiC3pnbVs-Df3mwAvFCRA',
    appId: '1:476779142513:android:3da2d4ebfc0d263ffdead0',
    messagingSenderId: '476779142513',
    projectId: 'lezgowsagow-dc07f',
    databaseURL: 'https://lezgowsagow-dc07f.firebaseio.com',
    storageBucket: 'lezgowsagow-dc07f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoJO7ULWain5ydPuE9tnQfxEwQAOSOwEY',
    appId: '1:476779142513:ios:c627f4f33c986141fdead0',
    messagingSenderId: '476779142513',
    projectId: 'lezgowsagow-dc07f',
    databaseURL: 'https://lezgowsagow-dc07f.firebaseio.com',
    storageBucket: 'lezgowsagow-dc07f.appspot.com',
    iosBundleId: 'com.example.pizzaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAoJO7ULWain5ydPuE9tnQfxEwQAOSOwEY',
    appId: '1:476779142513:ios:c627f4f33c986141fdead0',
    messagingSenderId: '476779142513',
    projectId: 'lezgowsagow-dc07f',
    databaseURL: 'https://lezgowsagow-dc07f.firebaseio.com',
    storageBucket: 'lezgowsagow-dc07f.appspot.com',
    iosBundleId: 'com.example.pizzaApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAVAc-KA704Edp75LYMqaLHq3iKJ8P9zeM',
    appId: '1:476779142513:web:78e539161d426007fdead0',
    messagingSenderId: '476779142513',
    projectId: 'lezgowsagow-dc07f',
    authDomain: 'lezgowsagow-dc07f.firebaseapp.com',
    databaseURL: 'https://lezgowsagow-dc07f.firebaseio.com',
    storageBucket: 'lezgowsagow-dc07f.appspot.com',
    measurementId: 'G-F3EBJ608NB',
  );
}
