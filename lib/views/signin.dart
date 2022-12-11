import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project3/constant/route.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => SigninState();
}

class SigninState extends State<Signin> {
  late final TextEditingController _email;
  late final TextEditingController _passowrd;

  @override
  void initState() {
    _email = TextEditingController();
    _passowrd = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _passowrd.dispose();
    super.dispose();
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
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
                        final email = _email.text;
                        final password = _passowrd.text;
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            homeRoute, (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
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
                              color: Colors.blue,
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
    );
  }
}
