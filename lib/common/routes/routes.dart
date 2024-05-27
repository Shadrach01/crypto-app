import 'package:crypto_app/common/routes/app_routes-name.dart';
import 'package:crypto_app/features/application/view/application.dart';
import 'package:crypto_app/features/home/view/home.dart';
import 'package:crypto_app/features/onboarding/register/view/register.dart';
import 'package:crypto_app/features/onboarding/sign_in/view/sign_in.dart';
import 'package:crypto_app/features/onboarding/welcome/view/welcome.dart';
import 'package:crypto_app/global.dart';
import 'package:flutter/material.dart';

class AppPages {
  // List of all the pages in the app
  static List<RouteEntity> routes() {
    return [
      RouteEntity(path: AppRoutesName.WELCOME, page: const Welcome()),
      RouteEntity(path: AppRoutesName.SIGN_IN, page: const SignIn()),
      RouteEntity(path: AppRoutesName.REGISTER, page: const Register()),
      RouteEntity(path: AppRoutesName.APPLICATION, page: const Application()),
      RouteEntity(path: AppRoutesName.HOME, page: const Home()),
    ];
  }

  // Generate route settings
  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    // First check if the route settings has a name
    if (settings.name != null) {
      // Check if the element which is the route[index] == the settings.name
      var result = routes().where((element) => element.path == settings.name);

      if (result.isNotEmpty) {
        bool deviceFirstTime = Global.storageService.getDeviceFirstOpen();

        if (result.first.path == AppRoutesName.WELCOME && deviceFirstTime) {
          bool isLoggedIn = Global.storageService.isLoggedIn();

          if (isLoggedIn) {
            return MaterialPageRoute(
                builder: (_) => const Application(), settings: settings);
          } else {
            return MaterialPageRoute(
                builder: (_) => const SignIn(), settings: settings);
          }
        } else {
          return MaterialPageRoute(
              builder: (_) => result.first.page, settings: settings);
        }
      }
    }
    return MaterialPageRoute(
        builder: (_) => const Welcome(), settings: settings);
  }
}

class RouteEntity {
  String path;
  Widget page;

  RouteEntity({required this.path, required this.page});
}
