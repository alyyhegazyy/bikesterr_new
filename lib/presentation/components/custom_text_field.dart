import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      this.label = " ",
      this.fun,
      this.isPassword = false,
      this.myController});
  String? label;
  String? Function(String?)? fun;
  bool isPassword = false; //flag
  bool passInvisible = true;
  Widget? myIconButton;
  TextEditingController? myController;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: widget.myController,
          obscureText: widget.isPassword ? widget.passInvisible : false,
          decoration: InputDecoration(
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        widget.passInvisible = !widget.passInvisible;
                        //toggle
                      });
                    },
                    icon: Icon(Icons.visibility_off_sharp))
                : null,
            label: Text(
              widget.label!,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))),
          ),
          // The validator receives the text that the user has entered.
          validator: widget.fun),
    );
  }
}
/*
      if (widget.label==password||widget.label==re-password){
        widget.ispassword==true
      };
      if (widget.ispassword=true){
        obscureText : true;
        suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                    alignLabelWithHint: false,
                    filled: true,
                  ),
      };
*/