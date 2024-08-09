import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper/sixbox.dart';
import 'package:flutter_application_1/core/theming/colors.dart';

class SocialNetworkingLogin extends StatelessWidget {
  const SocialNetworkingLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: ColorsApp.transparent,
          child: Image.asset(
            'assets/images/Login_google.png',
          ),
        ),
        horixontalspace(32),
        CircleAvatar(
          backgroundColor: ColorsApp.transparent,
          child: Image.asset('assets/images/Login facebook.png'),
        ),
        horixontalspace(32),
        CircleAvatar(
          backgroundColor: ColorsApp.transparent,
          child: Image.asset('assets/images/Login IOS.png'),
        ),
      ],
    );
  }
}
