// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB10MK7TPFszeZFd4vFGYBk4YomlYnffjU',
    appId: '1:867368884752:web:7ca908ef1571dba06cc895',
    messagingSenderId: '867368884752',
    projectId: 'fir-d38d3',
    authDomain: 'fir-d38d3.firebaseapp.com',
    storageBucket: 'fir-d38d3.appspot.com',
    measurementId: 'G-V86LL1CMSX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDy4QCzqjsRQ2xMsVjIp2AkqkG6UExfAFU',
    appId: '1:867368884752:android:7138b5db0dfa33416cc895',
    messagingSenderId: '867368884752',
    projectId: 'fir-d38d3',
    storageBucket: 'fir-d38d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApt6J2AMnl92jQaGf2jaJ78Jx_AimhMxw',
    appId: '1:867368884752:ios:2886da681b7a98f46cc895',
    messagingSenderId: '867368884752',
    projectId: 'fir-d38d3',
    storageBucket: 'fir-d38d3.appspot.com',
    iosClientId: '867368884752-3fagmekosah6u0kpmia3hf5udnh7dke9.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebaseAuthDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApt6J2AMnl92jQaGf2jaJ78Jx_AimhMxw',
    appId: '1:867368884752:ios:d89c604edebff9826cc895',
    messagingSenderId: '867368884752',
    projectId: 'fir-d38d3',
    storageBucket: 'fir-d38d3.appspot.com',
    iosClientId: '867368884752-3ms85cmugm6uf2viks1k6f63cbdbkfcf.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebaseAuthDemo.RunnerTests',
  );
}
