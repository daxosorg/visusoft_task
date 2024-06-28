import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAdgtUMmzGFaCde40irWcwdw1T63MxZHck",
      appId: "1:430854178948:android:af6650da0be352d9b55ad1",
      messagingSenderId: "430854178948",
      projectId: "visusofttask",
      storageBucket: "visusofttask.appspot.com",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Frames App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
