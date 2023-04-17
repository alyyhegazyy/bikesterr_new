import 'package:bikesterr/presentation/components/appbar.dart';
import 'package:bikesterr/presentation/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: const MyDrawer(),
      body: Container(
        color: const Color.fromRGBO(233, 233, 235, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 80.0,
                  child: Icon(
                    Icons.person,
                    size: 150,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'USER NAME',
                style: TextStyle(
                  color: const Color.fromRGBO(209, 199, 202, .9),
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(209, 199, 202, 50),
                  border: Border.all(width: 2, color: Colors.blueAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                width: 340,
                height: 440,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(209, 199, 202, 50),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(209, 199, 202, 50)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35)),
                      ),
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 320,
                      height: 40,
                      child: const Text('User name:'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(209, 199, 202, 50),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(209, 199, 202, 50)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35)),
                      ),
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 320,
                      height: 40,
                      child: const Text('Email:'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(209, 199, 202, 50),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(209, 199, 202, 50)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35)),
                      ),
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 320,
                      height: 40,
                      child: const Text('Date of Birth:'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(209, 199, 202, 50),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(209, 199, 202, 50)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35)),
                      ),
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 320,
                      height: 40,
                      child: const Text('Contact number:'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(209, 199, 202, 50),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(209, 199, 202, 50)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35)),
                      ),
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 320,
                      height: 40,
                      child: const Text('Emergency number:'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(209, 199, 202, 50),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(209, 199, 202, 50)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35)),
                      ),
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 320,
                      height: 40,
                      child: const Text('Blood type:'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // Center(
                    //   child: ElevatedButton(
                    //     onPressed: () {},
                    //     style: ButtonStyle(
                    //       backgroundColor: MaterialStateProperty.all(
                    //           const Color.fromRGBO(4, 42, 80, .9)),
                    //       elevation: MaterialStateProperty.all(5),
                    //     ),
                    //     child: const Text('Edit'),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
