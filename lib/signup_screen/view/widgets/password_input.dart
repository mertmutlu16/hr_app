import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {

  bool isObscured = false;
  void toggleObscurePassword() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 2.85.h,
        ),
         TextField(
          obscureText: isObscured ? false : true,
          decoration: InputDecoration(
            labelText: "Password",
            border:  const OutlineInputBorder(
              borderSide: BorderSide( color:  Colors.black54)
            ),

             suffixIcon: GestureDetector(
                onTap: toggleObscurePassword,
                child: isObscured
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
            
          ),
        ),
      ],

    );
  }
}