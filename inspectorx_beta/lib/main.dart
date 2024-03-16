import 'package:flutter/material.dart';
import 'package:inspectorx_beta/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
