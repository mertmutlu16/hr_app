import 'package:flutter/material.dart';
import 'package:hr_app/leave_request_screen/view_model/leave_request_screen_view_model.dart';
import 'package:hr_app/login_screen/view_model/login_screen_view_model.dart';
import 'package:hr_app/utils/locator/locator.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PendingScreen extends StatefulWidget {
  const PendingScreen({super.key});

  @override
  State<PendingScreen> createState() => _PendingScreenState();
}

class _PendingScreenState extends State<PendingScreen> {
  final leaveRequestScreenViewModel = locator<LeaveRequestScreenViewModel>();
  final loginScreenViewModel = locator<LoginScreenViewModel>();

  int? pendingLeavesListOldLength;

  @override
  void initState() {
    super.initState();
    if (leaveRequestScreenViewModel.pendingLeavesList.isEmpty) {
      leaveRequestScreenViewModel
          .getPendingListLeavesByUser(loginScreenViewModel.user!.id);
      pendingLeavesListOldLength =
          leaveRequestScreenViewModel.pendingLeavesList.length;
    }
  }

  @override
  void didChangeDependencies() {
    if (pendingLeavesListOldLength !=
        leaveRequestScreenViewModel.pendingLeavesList.length) {
      setState(() {
        leaveRequestScreenViewModel.pendingLeavesList.clear();
        leaveRequestScreenViewModel
            .getPendingListLeavesByUser(loginScreenViewModel.user!.id);
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 3.5.h,
        ),
        
        SizedBox(
          height: 60.h,
          child: Observer(builder: (_) {
            if(leaveRequestScreenViewModel.pendingLeavesList.isEmpty){
              return Center(
                child: Text(
                'No pending requests.',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
              ),
              );
            }else{
             
            return ListView.builder(
                itemCount: leaveRequestScreenViewModel.pendingLeavesList.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 20.h,
                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 1.5.h),
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding:  EdgeInsets.all(1.5.h),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top : 1.h ,bottom: 1.h),
                                child: Text(" Reason for requesting leave : ${leaveRequestScreenViewModel
                                    .pendingLeavesList[index].reason} " ,
                                style: TextStyle(
                                    fontSize: 11.0.sp,
                                    fontWeight: FontWeight.w500),),
                              ),

                              Padding(
                                padding:  EdgeInsets.only(bottom: 1.h),
                                child: Text(
                                  "Leave dates : ${
                                    leaveRequestScreenViewModel
                                    .pendingLeavesList[index].startLeaveDay}.${
                                      leaveRequestScreenViewModel
                                    .pendingLeavesList[index].startLeaveMonth}.${
                                      leaveRequestScreenViewModel
                                    .pendingLeavesList[index].startLeaveYear} - ${
                                      leaveRequestScreenViewModel
                                    .pendingLeavesList[index].endLeaveDay}.${
                                      leaveRequestScreenViewModel
                                    .pendingLeavesList[index].endLeaveMonth}.${
                                      leaveRequestScreenViewModel
                                    .pendingLeavesList[index].endLeaveYear}.",
                                  style: TextStyle(
                                    fontSize: 11.0.sp,
                                    fontWeight: FontWeight.w500),
                                ),
                              ),

                               Text(
                                  "Number of leave days : ${
                                    leaveRequestScreenViewModel.pendingLeavesList[index].numberOfLeaveDay}",
                                style: TextStyle(
                                  fontSize: 11.0.sp,
                                  fontWeight: FontWeight.w500),
                                ),
                                
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });}
          }),
        ),
      ],
    );
  }
}
