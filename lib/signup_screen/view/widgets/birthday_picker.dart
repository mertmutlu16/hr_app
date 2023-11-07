// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:sizer/sizer.dart';

class BirthdayPicker extends StatefulWidget {
  const BirthdayPicker({super.key});

  @override
  State<BirthdayPicker> createState() => _BirthdayPickerState();
}

class _BirthdayPickerState extends State<BirthdayPicker> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.5.h),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 8.h),
              backgroundColor: const Color.fromARGB(1000, 241, 0, 77),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: _selectedDate != null
              ? Text(
                  "Selected Date : ${_selectedDate!.day}-${_selectedDate!.month}-${_selectedDate!.year}")
              : const Text("Select Date of Birth"),
          onPressed: () async {
            var datePicked = await DatePicker.showSimpleDatePicker(
              context,
              initialDate: DateTime(2001),
              firstDate: DateTime(1930),
              lastDate: DateTime(2025),
              dateFormat: "dd-MMMM-yyyy",
              locale: DateTimePickerLocale.en_us,
              looping: false,
            );

            if (datePicked != null) {
              setState(() {
                _selectedDate = datePicked;
              });
            }
          },
        ),
      ],
    );
  }
}
