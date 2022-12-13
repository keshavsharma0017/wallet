import 'package:flutter/material.dart';
import 'package:project3/views/reset.dart';

import '../constant/request.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({super.key});

  @override
  State<Forgetpass> createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  bool _isLoading = false;
  final _email = TextEditingController();

  sendOtp() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthController().sendOtp(_email.text);
    if (res != 'success') {
      setState(() {
        _isLoading = false;
      });
      if (!mounted) return;
      return showSnackBarr(res, context);
    } else {
      if (!mounted) return;
      showSnackBarr('Verify the otp sent to this email address', context);
      return Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => ResetPassword(email: _email.text),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              0.0,
              8.0,
              0.0,
              8.0,
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
                      cursorColor: const Color.fromARGB(255, 48, 63, 159),
                      controller: _email,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        contentPadding: const EdgeInsets.only(
                          left: 10,
                        ),
                        prefixIcon: const Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.alternate_email_sharp,
                          ),
                        ),
                        hintText: "",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 48, 63, 159))),
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
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        sendOtp();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 48, 63, 159),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text('Send otp'),
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
