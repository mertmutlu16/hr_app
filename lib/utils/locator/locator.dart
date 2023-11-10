
import 'package:get_it/get_it.dart';
import 'package:hr_app/department_info_edit_screen/view_model/department_info_edit_screen_view_model.dart';
import 'package:hr_app/email_info_edit_screen/view_model/email_info_edit_screen_view_model.dart';
import 'package:hr_app/login_screen/view_model/login_screen_view_model.dart';
import 'package:hr_app/signup_screen/view_model/signup_screen_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator(){

  locator.registerLazySingleton<LoginScreenViewModel>(() => LoginScreenViewModel());
  locator.registerLazySingleton<SignupScreenViewModel>(() => SignupScreenViewModel());
  locator.registerLazySingleton<EmailInfoEditScreenViewModel>(() => EmailInfoEditScreenViewModel());
  locator.registerLazySingleton<DepartmentInfoEditScreenViewModel>(() => DepartmentInfoEditScreenViewModel());



}