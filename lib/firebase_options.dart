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
    apiKey: 'AIzaSyCX-D2uQ1FDSVgjWFtZ4Wzb9AnNvKvAvLY',
    appId: '1:315842047554:web:6d3788f63041a0b2aa47db',
    messagingSenderId: '315842047554',
    projectId: 'crud1-ab551',
    authDomain: 'crud1-ab551.firebaseapp.com',
    storageBucket: 'crud1-ab551.appspot.com',
    measurementId: 'G-D2G9BLZPT9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB49rA9wkdf9s-dfdQjU_N-Y5wVChUipbw',
    appId: '1:315842047554:android:dc37193820729419aa47db',
    messagingSenderId: '315842047554',
    projectId: 'crud1-ab551',
    storageBucket: 'crud1-ab551.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJrMLXRzHfpV9qwOSHC4mnY2n6r1X98e4',
    appId: '1:315842047554:ios:6ffcf3cb2ffadd4daa47db',
    messagingSenderId: '315842047554',
    projectId: 'crud1-ab551',
    storageBucket: 'crud1-ab551.appspot.com',
    iosBundleId: 'com.example.sencvp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJrMLXRzHfpV9qwOSHC4mnY2n6r1X98e4',
    appId: '1:315842047554:ios:dcafe95cf31f1dc5aa47db',
    messagingSenderId: '315842047554',
    projectId: 'crud1-ab551',
    storageBucket: 'crud1-ab551.appspot.com',
    iosBundleId: 'com.example.sencvp.RunnerTests',
  );
}
