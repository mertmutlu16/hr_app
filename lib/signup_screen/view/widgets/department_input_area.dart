import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hr_app/signup_screen/view_model/signup_screen_view_model.dart';
import 'package:hr_app/utils/locator/locator.dart';
import 'package:sizer/sizer.dart';

class DepartmentInputArea extends StatefulWidget {
  const DepartmentInputArea({super.key});

  @override
  State<DepartmentInputArea> createState() => _DepartmentInputAreaState();
}

class _DepartmentInputAreaState extends State<DepartmentInputArea> {
  final signupScreenViewModel = locator<SignupScreenViewModel>();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.5.h),
         Observer( builder: (_){
           return TextField(
            controller: signupScreenViewModel.departmentTextController,
            decoration: const InputDecoration(
              labelText:"Department", 
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black54),
              ),
            ),
                 );
         },),
      ],
    );
  }
}