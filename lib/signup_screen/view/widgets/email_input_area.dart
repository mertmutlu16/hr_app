import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EmailInputArea extends StatefulWidget {
  const EmailInputArea({super.key});

  @override
  State<EmailInputArea> createState() => _EmailInputAreaState();
}

class _EmailInputAreaState extends State<EmailInputArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        SizedBox(
          height: 2.5.h,
        ),
        const TextField(
          decoration: InputDecoration(
            labelText:"E-mail", 
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
          ),
        ),
      ],
    );
  }
}