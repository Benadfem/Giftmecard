import 'package:flutter/material.dart';

import '../screen/home_page.dart';
import '../screen/login_page.dart';
import '../screen/registration_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(title: 'GiftCard Application'),
            settings: settings);
      case '/registration-page':
        return MaterialPageRoute(
            builder: (_) =>  RegistrationPage(), settings: settings);
      case '/login-page':
        return MaterialPageRoute(
            builder: (_) => const LoginPage(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => const Center(child: Text('error!')),
            settings: settings);
    }
  }
}
