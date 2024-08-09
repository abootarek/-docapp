import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper/sixbox.dart';
import 'package:flutter_application_1/core/theming/style.dart';

class TextDividerLogin extends StatelessWidget {
  const TextDividerLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
        horixontalspace(5),
        Text(
          'Or sign in with',
          style: TextStyles.font13gray,
        ),
        horixontalspace(5),
        const Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
