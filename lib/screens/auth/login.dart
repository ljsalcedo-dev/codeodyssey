import 'package:codeodyssey/style/buttons.dart';
import 'package:codeodyssey/style/input_field.dart';
import 'package:codeodyssey/style/typography.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // LOGIN ESSENTIALS
  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // FUNCTIONS
  handleLogin() {
    // TO DO
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: loginFormKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // WELCOME MESSAGE
              const Text(
                'Welcome to CodeOdyssey!',
                style: title,
              ),
              const Gap(25),

              // EMAIL FORM FIELD
              TextFormField(
                decoration: authInputFieldStyle(label: 'Email'),
                controller: emailController,
                validator: (email) {
                  if (!EmailValidator.validate(email!)) {
                    return 'Please input a valid email.';
                  }
                  return null;
                },
              ),
              const Gap(5),

              // PASSWORD FORM FIELD
              TextFormField(
                decoration: authInputFieldStyle(label: 'Password'),
                controller: passwordController,
                obscureText: true,
                validator: (value) {
                  return null;
                },
              ),
              const Gap(15),

              // LOGIN BUTTON
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  style: buttonStyle,
                  onPressed: handleLogin,
                  child: const Text(
                    'LOGIN',
                    style: subtitle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
