import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class UserInfoField extends StatefulWidget {
  UserInfoField({
    super.key,
    this.label = " ",
    this.info = " ",
  });

  String? label;
  String? info;

  @override
  State<UserInfoField> createState() => _UserInfoFieldState();
}

class _UserInfoFieldState extends State<UserInfoField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(209, 199, 202, 50),
        border: Border.all(
            width: 1, color: const Color.fromRGBO(209, 199, 202, 50)),
        borderRadius: const BorderRadius.all(Radius.circular(35)),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: 320,
      height: 50,
      child: Row(
        children: [
          Text(
            widget.label!,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            widget.info!,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
