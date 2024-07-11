import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/routs.dart';
import 'package:flutter_application_1/featuers/onbording/ui/onbording_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // onbordingscreen
      case Routes.onbordingscreen:
        return MaterialPageRoute(
          builder: (context) => const OnbordingScreen(),
        );
//

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
