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
    apiKey: 'AIzaSyCao5LqwZeBAvGq-ZfpmTN6Ii1mDwNc3NU',
    appId: '1:380385856787:web:b619448704b673b09e9ee6',
    messagingSenderId: '380385856787',
    projectId: 'unizap4n',
    authDomain: 'unizap4n.firebaseapp.com',
    storageBucket: 'unizap4n.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhrSTDilPotzuuGJA5EptZgW14XC8OtIA',
    appId: '1:380385856787:android:8f0b0f65a751428d9e9ee6',
    messagingSenderId: '380385856787',
    projectId: 'unizap4n',
    storageBucket: 'unizap4n.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKkXYG8krU6FEXO3NZ78J1pGFDWH4mVQs',
    appId: '1:380385856787:ios:e6c276ef1dcd7ebf9e9ee6',
    messagingSenderId: '380385856787',
    projectId: 'unizap4n',
    storageBucket: 'unizap4n.appspot.com',
    iosClientId: '380385856787-qbapo0g77h0qkrt71them3954uh9hseh.apps.googleusercontent.com',
    iosBundleId: 'br.unizap.unizap',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKkXYG8krU6FEXO3NZ78J1pGFDWH4mVQs',
    appId: '1:380385856787:ios:e6c276ef1dcd7ebf9e9ee6',
    messagingSenderId: '380385856787',
    projectId: 'unizap4n',
    storageBucket: 'unizap4n.appspot.com',
    iosClientId: '380385856787-qbapo0g77h0qkrt71them3954uh9hseh.apps.googleusercontent.com',
    iosBundleId: 'br.unizap.unizap',
  );
}
