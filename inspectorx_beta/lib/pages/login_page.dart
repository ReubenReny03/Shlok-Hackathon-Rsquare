import 'package:flutter/material.dart';
import 'package:inspectorx_beta/components/my_textfield.dart';
import 'package:inspectorx_beta/components/my_button.dart';
import 'package:flutter/services.dart' show rootBundle;

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff162535),
        body: SafeArea(
            child: Center(
                child: Column(children: [
          const SizedBox(height: 50),
          // logo
          const Image(image: AssetImage('lib/images/banner.png')),
          // const Icon(Icons.lock, size: 100),
          const SizedBox(height: 50),
          const Text('Welcome back inspector!',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
              )),
          const SizedBox(height: 50),
          MyTextFeild(
            controller: emailController,
            hintText: "User Name",
            obscureText: false,
          ),
          const SizedBox(height: 20),
          MyTextFeild(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey[100]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          MyButton(
            onTap: signUserIn,
          ),
          // welcome back
        ]))));
  }
}
