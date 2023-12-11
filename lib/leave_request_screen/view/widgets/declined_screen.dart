import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DeclinedScreen extends StatefulWidget {
  const DeclinedScreen({super.key});

  @override
  State<DeclinedScreen> createState() => _DeclinedScreenState();
}

class _DeclinedScreenState extends State<DeclinedScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.5.h,)
      ],
    );
  }
}