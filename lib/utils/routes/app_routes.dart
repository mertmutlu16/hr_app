
// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_app/atomic_widgets/error_screen/error_screen.dart';
import 'package:hr_app/login_screen/view/login_screen_view.dart';
import 'package:hr_app/signup_screen/view/signup_screen.dart';
import 'package:hr_app/splash_screen/view/splash_screen_view.dart';

class AppRoutes {

  static const Transition _transition = Transition.native;
  static const Duration _transitionDuration = Duration(milliseconds: 500);
  static const INIT_PATH = "/splashScreenPath";
  static const LOGIN_SCREEN_PATH = "/loginScreenPath";
  static const SIGNUP_SCREEN_PATH = "/signupScreenPath";
  static const ERROR_SCREEN_PATH = "/errorScreenPath";



  static GetPage getPage(Widget Function() widgetFn, String path,
      {Transition? transition, List<GetPage>? children}) {
    return GetPage(
        name: path,
        transition: transition ?? _transition,
        transitionDuration: _transitionDuration,
        fullscreenDialog: true,
        page: widgetFn,
        children: children ?? []);
  }



  static final get_routes = <GetPage>[
    getPage(() => const SplashScreenView(), INIT_PATH),
    getPage(() => const LoginScreenView(), LOGIN_SCREEN_PATH),
    getPage(() => const SignUpScreenView(), SIGNUP_SCREEN_PATH),

    

    


    unknownRoute
  ];

  static final unknownRoute =
      getPage(() => const ErrorScreen(), ERROR_SCREEN_PATH);
}