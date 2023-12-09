
import 'package:get_it/get_it.dart';
import 'package:hr_app/add_new_events_screen/view_model/add_new_events_screen_view_model.dart';
import 'package:hr_app/department_detail_screen/view_model/department_detail_screen_view_model.dart';
import 'package:hr_app/department_info_edit_screen/view_model/department_info_edit_screen_view_model.dart';
import 'package:hr_app/department_screen/view_model/department_screen_view_model.dart';
import 'package:hr_app/email_info_edit_screen/view_model/email_info_edit_screen_view_model.dart';
import 'package:hr_app/events_screen/view_model/events_screen_view_model.dart';
import 'package:hr_app/fullname_info_edit_screen/view_model/fullname_info_edit_screen_view_model.dart';
import 'package:hr_app/login_screen/view_model/login_screen_view_model.dart';
import 'package:hr_app/manager_events_screen/view_model/manager_events_screen_view_model.dart';
import 'package:hr_app/phone_info_edit_screen/view_model/phone_info_edit_screen_view_model.dart';
import 'package:hr_app/signup_screen/view_model/signup_screen_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator(){

  locator.registerLazySingleton<LoginScreenViewModel>(() => LoginScreenViewModel());
  locator.registerLazySingleton<SignupScreenViewModel>(() => SignupScreenViewModel());
  locator.registerLazySingleton<EmailInfoEditScreenViewModel>(() => EmailInfoEditScreenViewModel());
  locator.registerLazySingleton<DepartmentInfoEditScreenViewModel>(() => DepartmentInfoEditScreenViewModel());
  locator.registerLazySingleton<PhoneInfoEditScreenViewModel>(() => PhoneInfoEditScreenViewModel());
  locator.registerLazySingleton<FullnameInfoEditScreenViewModel>(() => FullnameInfoEditScreenViewModel());
  locator.registerLazySingleton<EventsScreenViewModel>(() => EventsScreenViewModel());
  locator.registerLazySingleton<AddNewEventsScreenViewModel>(() => AddNewEventsScreenViewModel());
  locator.registerLazySingleton<ManagerEventsScreenViewModel>(() => ManagerEventsScreenViewModel());
  locator.registerLazySingleton<DepartmentScreenViewModel>(() => DepartmentScreenViewModel());
  locator.registerLazySingleton<DepartmentDetailScreenViewModel>(() => DepartmentDetailScreenViewModel());









}