
import 'package:get_it/get_it.dart';
import 'package:hr_app/login_screen/view_model/login_screen_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator(){

  locator.registerLazySingleton<LoginScreenViewModel>(() => LoginScreenViewModel());

}