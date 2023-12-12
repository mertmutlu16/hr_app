import 'package:flutter/material.dart';
import 'package:hr_app/leave_request_screen/model/apis/add_new_pending_leave_api.dart';
import 'package:hr_app/leave_request_screen/model/apis/update_users_leave_day_api.dart';
import 'package:mobx/mobx.dart';
part 'leave_request_screen_view_model.g.dart';

class LeaveRequestScreenViewModel = _LeaveRequestScreenViewModelBase
    with _$LeaveRequestScreenViewModel;

abstract class _LeaveRequestScreenViewModelBase with Store {
  final AddNewPendingLeaveApi _addNewPendingLeave = AddNewPendingLeaveApi();
  final UpdateUsersLeaveDayApi _updateUsersLeaveDay = UpdateUsersLeaveDayApi();
  @observable
  TextEditingController reasonTextController = TextEditingController();

  @observable
  int? startLeaveDay;

  @observable
  int? startLeaveMonth;

  @observable
  int? startLeaveYear;

  @observable
  int? endLeaveDay;

  @observable
  int? endLeaveMonth;

  @observable
  int? endLeaveYear;

  @observable
  int? numberOfLeaveDay;

  @action
  TextEditingController getReasonController() {
    return reasonTextController;
  }

  @action
  Future createNewPendingLeave(
      String reason,
      int startLeaveDay,
      int startLeaveMonth,
      int startLeaveYear,
      int endLeaveDay,
      int endLeaveMonth,
      int endLeaveYear,
      int numberOfLeaveDay,
      int userId) async {
    await _addNewPendingLeave
        .addNewPendingLeaveApi(
            reason,
            startLeaveDay,
            startLeaveMonth,
            startLeaveYear,
            endLeaveDay,
            endLeaveMonth,
            endLeaveYear,
            numberOfLeaveDay,
            userId)
        .catchError((err) {
      debugPrint(err.toString());
    });
  }

  @action
  Future changeLeaveDay(int id, int leaveDay) async {
    await _updateUsersLeaveDay
        .updateLeaveDayApi(id, leaveDay)
        .catchError((err) {
      debugPrint(err.toString());
    });
  }


 
}
