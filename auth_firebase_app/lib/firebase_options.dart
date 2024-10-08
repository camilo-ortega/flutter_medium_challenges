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
    apiKey: 'AIzaSyA1B2C3D4E5F6G7H8I9J0K1L2M3N4O5P6Q',
    appId: '1:1234567890:web:abcdef1234567890abcdef',
    messagingSenderId: '1234567890',
    projectId: 'test-flutter-app-xyz123',
    authDomain: 'test-flutter-app-xyz123.firebaseapp.com',
    storageBucket: 'test-flutter-app-xyz123.appspot.com',
    measurementId: 'G-ABCDEFGH1I',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyZ9Y8X7W6V5U4T3S2R1Q0P9O8N7M6L5K4',
    appId: '1:1234567890:android:abcdef1234567890abcdef',
    messagingSenderId: '1234567890',
    projectId: 'test-flutter-app-xyz123',
    storageBucket: 'test-flutter-app-xyz123.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyW5V4U3T2S1R0Q9O8N7M6L5K4J3I2H1',
    appId: '1:1234567890:ios:abcdef1234567890abcdef',
    messagingSenderId: '1234567890',
    projectId: 'test-flutter-app-xyz123',
    storageBucket: 'test-flutter-app-xyz123.appspot.com',
    iosBundleId: 'com.exampledomain.testFirebaseApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyW5V4U3T2S1R0Q9O8N7M6L5K4J3I2H1',
    appId: '1:1234567890:ios:abcdef1234567890abcdef',
    messagingSenderId: '1234567890',
    projectId: 'test-flutter-app-xyz123',
    storageBucket: 'test-flutter-app-xyz123.appspot.com',
    iosBundleId: 'com.exampledomain.testFirebaseApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA1B2C3D4E5F6G7H8I9J0K1L2M3N4O5P6Q',
    appId: '1:1234567890:web:abcdef1234567890abcdef',
    messagingSenderId: '1234567890',
    projectId: 'test-flutter-app-xyz123',
    authDomain: 'test-flutter-app-xyz123.firebaseapp.com',
    storageBucket: 'test-flutter-app-xyz123.appspot.com',
    measurementId: 'G-HIJKLMN2O',
  );
}
