import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/app_router.dart';
import 'package:flutter_application_1/core/routing/routs.dart';
import 'package:flutter_application_1/core/theming/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Doc App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsApp.white,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onbordingscreen, // start screen =>onbordingscreen
      ),
    );
  }
}
