import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DepartmentInputArea extends StatefulWidget {
  const DepartmentInputArea({super.key});

  @override
  State<DepartmentInputArea> createState() => _DepartmentInputAreaState();
}

class _DepartmentInputAreaState extends State<DepartmentInputArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.5.h),
        const TextField(
          decoration: InputDecoration(
            labelText:"Department", 
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
          ),
        ),
      ],
    );
  }
}