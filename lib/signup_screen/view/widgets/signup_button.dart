import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_app/utils/routes/app_routes.dart';
import 'package:sizer/sizer.dart';

class SignupButton extends StatefulWidget {
  const SignupButton({super.key});

  @override
  State<SignupButton> createState() => _SignupButtonState();
}

class _SignupButtonState extends State<SignupButton> {
  @override
  Widget build(BuildContext context) {
   return Padding(
      padding:  EdgeInsets.only(top : 7.h),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top : 2.h , bottom : 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(fontSize: 14.sp),
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.LOGIN_SCREEN_PATH);
                  },
                  child: Text(
                    " Log in",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(1000, 241, 0, 77)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only( bottom: 3.h),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 8.h),
                    backgroundColor: const Color.fromARGB(1000, 241, 0, 77),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text("Sign up")),
          )
        ],
      ),
    );
  }
}