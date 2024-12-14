import 'package:chatapp/components/button.dart';
import 'package:chatapp/components/textfields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // CREATE EDIT CONTROLLER
  // EMAIL AND PW
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGO
            Icon(Icons.message,
                size: 60, color: Theme.of(context).colorScheme.primary),

            const SizedBox(height: 50),

            // WELCOME BACK MSG
            Text(
              "Welcome back, you've be missed!",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 25),

            // EMAIL TXT
            TextFields(
              hintText: "Email",
              obscureText: false,
              controller: emailController,
            ),

            const SizedBox(height: 10),

            // PASSWORD TXTconst TextFields(
            TextFields(
              hintText: "Password",
              obscureText: true,
              controller: passwordController,
            ),

            const SizedBox(height: 25),

            // LOGIN BTN
            Button(
              text: "Login",
              onTap: login,
            ),

            const SizedBox(height: 25),

            // REGISTER BTN
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                Text(
                  "Register Now",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
