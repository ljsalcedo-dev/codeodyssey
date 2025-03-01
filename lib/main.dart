import 'package:codeodyssey/screens/auth/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CodeOdyssey());
}

class CodeOdyssey extends StatelessWidget {
  const CodeOdyssey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
