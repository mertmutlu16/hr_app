import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hr_app/leave_request_screen/view_model/leave_request_screen_view_model.dart';
import 'package:hr_app/utils/locator/locator.dart';
import 'package:sizer/sizer.dart';

class ManagerApprovedScreen extends StatefulWidget {
  const ManagerApprovedScreen({super.key});

  @override
  State<ManagerApprovedScreen> createState() => _ManagerApprovedScreenState();
}

class _ManagerApprovedScreenState extends State<ManagerApprovedScreen> {

  final leaveRequestScreenViewModel = locator<LeaveRequestScreenViewModel>();

  int? allApprovedLeavesListOldLength;

  @override
  void initState() {
    super.initState();
    if (leaveRequestScreenViewModel.allApprovedLeavesList.isEmpty) {
      leaveRequestScreenViewModel.getAllApprovedLeavesList();
      allApprovedLeavesListOldLength =
          leaveRequestScreenViewModel.allApprovedLeavesList.length;
    }
  }

  @override
  void didChangeDependencies() {
    if (allApprovedLeavesListOldLength !=
        leaveRequestScreenViewModel.allApprovedLeavesList.length) {
      setState(() {
        leaveRequestScreenViewModel.allApprovedLeavesList.clear();
        leaveRequestScreenViewModel.getAllApprovedLeavesList();
      });
    }
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 3.5.h),
        SizedBox(
          height: 60.h,
          child: Observer(builder: (_) {
            if (leaveRequestScreenViewModel.allApprovedLeavesList.isEmpty) {
              return Center(
                child: Text(
                  'No approved leaves.',
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                ),
              );
            } else {
              return ListView.builder(
                  itemCount:
                      leaveRequestScreenViewModel.allApprovedLeavesList.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 26.h,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 1.5.h),
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.green,
                                width: 0.05.h,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(1.5.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 1.h, bottom: 1.h),
                                  child: Text(
                                    leaveRequestScreenViewModel
                                        .allApprovedLeavesList[index].fullname,
                                    style: TextStyle(
                                        fontSize: 11.0.sp,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 1.h, bottom: 1.h),
                                  child: Text(
                                    " Reason for requesting leave : ${leaveRequestScreenViewModel.allApprovedLeavesList[index].reason} ",
                                    style: TextStyle(
                                        fontSize: 11.0.sp,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 1.h),
                                  child: Text(
                                    "Leave dates : ${
                                      leaveRequestScreenViewModel.allApprovedLeavesList[index].startLeaveDay}.${
                                        leaveRequestScreenViewModel.allApprovedLeavesList[index].startLeaveMonth}.${
                                          leaveRequestScreenViewModel.allApprovedLeavesList[index].startLeaveYear} - ${
                                            leaveRequestScreenViewModel.allApprovedLeavesList[index].endLeaveDay}.${
                                              leaveRequestScreenViewModel.allApprovedLeavesList[index].endLeaveMonth}.${
                                                leaveRequestScreenViewModel.allApprovedLeavesList[index].endLeaveYear}",
                                    style: TextStyle(
                                        fontSize: 11.0.sp,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Text(
                                  "Days off : ${leaveRequestScreenViewModel.allApprovedLeavesList[index].numberOfLeaveDay} day",
                                  style: TextStyle(
                                      fontSize: 11.0.sp,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            }
          }),
        )
      ],
    );
  }
}