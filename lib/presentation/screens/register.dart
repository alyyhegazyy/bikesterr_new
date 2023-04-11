import 'package:bikesterr/appbar.dart';
import 'package:bikesterr/presentation/screens/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: Form(
        key: _formKey,
        child: Stack(children: [
          Container(
            // width: double.infinity,
            // height: double.infinity,
            child: Image.asset('lib/assets/bikeSharing.avif',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(233, 233, 235, .85),
                border: Border.all(width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(35)),
              ),
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "username",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid username';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "email",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains("@") ||
                            !value.contains(".com")) {
                          return 'Please enter valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text(
                          "date of birth",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.length < 8) {
                          return 'incorrect password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "contact number",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null ||
                            value.length < 11 ||
                            value.length > 11) {
                          return 'incorrect number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "emergency number",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null ||
                            value.length < 11 ||
                            value.length > 11) {
                          return 'incorrect number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "Blood type",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.length > 3) {
                          return 'please enter correct blood type';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text(
                          "password",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.length < 8) {
                          return 'incorrect password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text(
                          "re-password",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.length < 8) {
                          return 'incorrect password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(4, 42, 80, .9)),
                        elevation: MaterialStateProperty.all(5),
                      ),
                      child: const Text(
                        'Submit',
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "you have an account?",
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                              );
                            },
                            child: const Text(
                              "Log in",
                            ))
                      ],
                    )
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
