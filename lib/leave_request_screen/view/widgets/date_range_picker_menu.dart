import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hr_app/login_screen/view_model/login_screen_view_model.dart';
import 'package:hr_app/utils/locator/locator.dart';
import 'package:sizer/sizer.dart';

class DateRangePickerMenu extends StatefulWidget {
  const DateRangePickerMenu({super.key});

  @override
  State<DateRangePickerMenu> createState() => _DateRangePickerMenuState();
}

class _DateRangePickerMenuState extends State<DateRangePickerMenu> {
  final loginScreenViewModel = locator<LoginScreenViewModel>();
  TextEditingController tc = TextEditingController();

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(2024, 10, 5),
    end: DateTime(2024, 10, 5),
  );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final difference = dateRange.duration;

    return Observer(builder: (_) {
      return Column(
        children: [
          SizedBox(height: 2.5.h),
          Padding(
            padding: EdgeInsets.only(top: 2.h, bottom: 3.2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Your remaining vacation days : ",
                  style: TextStyle(fontSize: 14.sp),
                ),
                Text(
                  loginScreenViewModel.user!.leaveDay.toString(),
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h, bottom: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Select vacation dates :",
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(
                  height: 8.h,
                  child: ElevatedButton(
                    onPressed: pickDateRange,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(1000, 241, 0, 77),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: Text(
                        "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h, bottom: 3.h),
            child: const TextField(
              //controller: ,
              decoration: InputDecoration(
                hintText: " Type your Reason for leave",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h, bottom: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Number of selected dates : ",
                  style: TextStyle(fontSize: 12.sp),
                ),
                Text(
                  "${difference.inDays} ",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.h),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 8.h),
                    backgroundColor: const Color.fromARGB(1000, 241, 0, 77),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text("Submit")),
          )
        ],
      );
    });
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      // initialDateRange: dateRange,
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.white, // Change primary color

            colorScheme: const ColorScheme.light(
                primary: Color.fromARGB(1000, 241, 0, 77)),
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (newDateRange == null) return; //pressed X

    setState(() => dateRange = newDateRange);
  }
}
