import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_app/utils/routes/app_routes.dart';
import 'package:sizer/sizer.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top : 43.5.h),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom : 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(fontSize: 14.sp),
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.SIGNUP_SCREEN_PATH);
                  },
                  child: Text(
                    " Sign up",
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
                child: const Text("Sign in")),
          )
        ],
      ),
    );
  }
}
