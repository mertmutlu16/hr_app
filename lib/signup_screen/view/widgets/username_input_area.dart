import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UsernameInputArea extends StatefulWidget {
  const UsernameInputArea({super.key});

  @override
  State<UsernameInputArea> createState() => _UsernameInputAreaState();
}

class _UsernameInputAreaState extends State<UsernameInputArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.5.h),
        const TextField(
          decoration: InputDecoration(
            labelText:"Full Name", 
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
          ),
        ),
      ],
    );
  }
}
