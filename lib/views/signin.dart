import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project3/constant/route.dart';
import 'package:project3/views/verify.dart';

import '../constant/request.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => SigninState();
}

class SigninState extends State<Signin> {
  bool _isLoading = false;
  late final TextEditingController _email;
  late final TextEditingController _passowrd;
  final _name = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool activeConnection = false;
  String T = "";
  Future checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          activeConnection = true;
          // T = "Turn off the data and repress again";
        });
      }
    } on SocketException catch (_) {
      setState(() {
        activeConnection = false;
        T = "Turn On the data and repress again";
      });
    }
  }

  @override
  void initState() {
    _email = TextEditingController();
    _passowrd = TextEditingController();
    checkUserConnection();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _passowrd.dispose();
    _name.dispose();
    super.dispose();
  }

  signUpUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthController().signUpUsingEmailPassword(
      _email.text,
      _passowrd.text,
      _name.text,
    );
    if (res != 'success') {
      setState(() {
        _isLoading = false;
      });
      if (!mounted) return;
      return showSnackBarr(res, context);
    } else {
      if (!mounted) return;
      showSnackBarr('Enter the OTP sent to your email address', context);
      return Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Verifyotp(
                email: _email.text,
                fname: _name.text,
              )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              8.0,
              0.0,
              8.0,
              0.0,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height - 150,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  25.0,
                  0.0,
                  25.0,
                  0.0,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: _name,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.name,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          // filled: true,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                          ),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.account_circle_outlined,
                            ),
                          ),
                          hintText: "",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          } else {
                            return null;
                          }
                        }),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _email,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          // filled: true,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                          ),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.alternate_email_sharp,
                            ),
                          ),
                          hintText: "",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "Email cannot be empty";
                          } else if (!(RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value))) {
                            return "incorrect email";
                          }
                          return null;
                        }),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _passowrd,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          hintText: "",
                          // filled: true,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                          ),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.lock_outline_rounded,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          labelText: 'Password',
                        ),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "password cannot be empty";
                          } else if (!(RegExp(
                                  r"^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*[@#$%^&-+=()]).{8,20}$")
                              .hasMatch(value))) {
                            return "Password must contain 1 upper case,1 lower case \nand a special char ";
                          } else {
                            return null;
                          }
                        }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            signUpUser();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 48, 63, 159),
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text('Register'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            const TextSpan(
                              text: "Already a User ?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                            TextSpan(
                              text: " Login",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 48, 63, 159),
                                fontSize: 17,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    loginRoute,
                                    (route) => false,
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
