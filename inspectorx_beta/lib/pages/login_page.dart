import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inspectorx_beta/components/my_textfield.dart';
// import 'package:inspectorx_beta/components/my_button.dart';
import 'package:loading_btn/loading_btn.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

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
          // MyButton(
          //   onTap: signUserIn,
          // ),
          // LoadingBtn(
          //   height: 70,
          //   borderRadius: 10,
          //   animate: true,
          //   color: const Color(0xfffbbe28),
          //   width: 300,
          //   loader: Container(
          //     hei
          //     padding: const EdgeInsets.all(10),
          //     child: const CircularProgressIndicator(
          //       valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          //     ),
          //   ),
          //   child: const Text("Sign In",
          //       style: TextStyle(
          //         color: Colors.white,
          //       )),
          //   onTap: (startLoading, stopLoading, btnState) async {
          //     if (btnState == ButtonState.idle) {
          //       startLoading();
          //       // call your network api
          //       await Future.delayed(const Duration(seconds: 2));
          //       stopLoading();
          //       signUserIn();
          //     }
          //   },
          // ),
          LoadingBtn(
            height: 50,
            borderRadius: 8,
            animate: true,
            color: const Color(0xfffbbe28),
            width: MediaQuery.of(context).size.width * 0.85,
            loader: Container(
              padding: const EdgeInsets.all(10),
              width: 40,
              height: 40,
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            child: const Text("Login",
                style: TextStyle(
                  color: Colors.white,
                )),
            onTap: (startLoading, stopLoading, btnState) async {
              if (btnState == ButtonState.idle) {
                startLoading();
                // call your network api
                await Future.delayed(const Duration(seconds: 5));
                stopLoading();
                signUserIn();
              }
            },
          ),
          // welcome back
        ]))));
  }
}
