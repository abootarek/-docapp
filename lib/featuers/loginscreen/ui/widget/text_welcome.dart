import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper/sixbox.dart';
import 'package:flutter_application_1/core/theming/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWelcome extends StatelessWidget {
  const TextWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: TextStyles.font32BblueBold,
        ),
        virticalspace(8),
        Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: TextStyles.font16gray,
        )
      ],
    );
  }
}
