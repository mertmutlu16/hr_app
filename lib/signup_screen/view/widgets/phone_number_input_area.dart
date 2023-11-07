import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';

class PhoneNumberInputArea extends StatefulWidget {
  const PhoneNumberInputArea({super.key});

  @override
  State<PhoneNumberInputArea> createState() => _PhoneNumberInputAreaState();
}

class _PhoneNumberInputAreaState extends State<PhoneNumberInputArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.5.h),
        const IntlPhoneField(
          decoration: InputDecoration(
            labelText: "Phone Number",
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
          ),
          initialCountryCode: 'TR',
        ),
      ],
    );
  }
}
