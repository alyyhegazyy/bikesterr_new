import 'package:bikesterr/appbar.dart';
import 'package:bikesterr/presentation/screens/profile.dart';
import 'package:bikesterr/presentation/screens/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool? check2 = false;

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
            child: Image.asset('lib/assets/bikeMount.avif',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 200, 0, 0),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(233, 233, 235, .85),
                border: Border.all(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(35)),
              ),
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
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
                      height: 10,
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
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: CheckboxListTile(
                            value: check2,
                            controlAffinity: ListTileControlAffinity
                                .leading, //checkbox at left
                            onChanged: (bool? value) {
                              setState(() {
                                check2 = value;
                              });
                            },
                            title: const Text(
                              "Remember me",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Forgot Password?",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              )),
                        )
                      ],
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile()),
                        );
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
                          "Don't have an account?",
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()),
                              );
                            },
                            child: const Text(
                              "Sign up",
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
