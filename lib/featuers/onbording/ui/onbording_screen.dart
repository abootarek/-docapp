import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/style.dart';
import 'package:flutter_application_1/featuers/onbording/ui/widget/doc_image_and_name.dart';
import 'package:flutter_application_1/featuers/onbording/ui/widget/doc_logo_and_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/get_started_button.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 41.h),
              const DocImageAndName(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 18.h,
                ),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13gray,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.h),
                    const GetStartedButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
