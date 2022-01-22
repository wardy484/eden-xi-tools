// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBudDZHMUTqe9oDrmGidg3Trwot09r_sI0',
    appId: '1:841113579326:web:13e7a02323c0d4e1b1466f',
    messagingSenderId: '841113579326',
    projectId: 'edenxi',
    authDomain: 'edenxi.firebaseapp.com',
    storageBucket: 'edenxi.appspot.com',
    measurementId: 'G-B3LVK50F90',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNeE22ztIgrs_M0xg6r9YmUz2OofjrXCA',
    appId: '1:841113579326:android:af8deec170649351b1466f',
    messagingSenderId: '841113579326',
    projectId: 'edenxi',
    storageBucket: 'edenxi.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBoCY_4NWOtAIYoNtzvhtZ4EH63OqJr4uE',
    appId: '1:841113579326:ios:edad4122ba2eb502b1466f',
    messagingSenderId: '841113579326',
    projectId: 'edenxi',
    storageBucket: 'edenxi.appspot.com',
    iosClientId: '841113579326-ffgu55e3dlniv04cpanuoakpvqk3bmod.apps.googleusercontent.com',
    iosBundleId: 'com.kimward.edentools',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBoCY_4NWOtAIYoNtzvhtZ4EH63OqJr4uE',
    appId: '1:841113579326:ios:edad4122ba2eb502b1466f',
    messagingSenderId: '841113579326',
    projectId: 'edenxi',
    storageBucket: 'edenxi.appspot.com',
    iosClientId: '841113579326-ffgu55e3dlniv04cpanuoakpvqk3bmod.apps.googleusercontent.com',
    iosBundleId: 'com.kimward.edentools',
  );
}
