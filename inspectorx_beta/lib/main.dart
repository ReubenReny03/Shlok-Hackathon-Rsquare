import 'package:flutter/material.dart';
import 'package:inspectorx_beta/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:inspectorx_beta/pages/leader_bord.dart';
import 'package:inspectorx_beta/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  // await Firebase.initializeApp();
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AuthPage(),
      home: SplashScreen(),
      // home: ProfilePage(),
    );
  }
}
