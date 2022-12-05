import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => LloginpageState();
}

class LloginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("MyWallet"),
        ),
        backgroundColor: Colors.white,
      ),
      body: const Center(child: Text("Login")),
    );
  }
}
