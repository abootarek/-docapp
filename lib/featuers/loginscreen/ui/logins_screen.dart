import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper/extintion.dart';
import 'package:flutter_application_1/core/helper/sixbox.dart';
import 'package:flutter_application_1/core/routing/routs.dart';
import 'package:flutter_application_1/core/theming/style.dart';
import 'package:flutter_application_1/core/widget/app_text_button.dart';
import 'package:flutter_application_1/core/widget/app_text_form_field.dart';
import 'package:flutter_application_1/featuers/loginscreen/ui/widget/text_welcome.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool is_Obscure = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 45.h,
            horizontal: 30.w,
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWelcome(),
                  virticalspace(36),
                  AppTextFormField(
                    hinttext: 'Email',
                    labletext: 'Email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Email for You';
                      }
                      if (value.length < 10) {
                        return 'Email must be at least 10 characters';
                      }
                      return null;
                    },
                  ),
                  virticalspace(16),
                  AppTextFormField(
                    hinttext: 'Password',
                    labletext: 'Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Password for You';
                      }
                      if (value.length < 10) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    isObscureText: is_Obscure,
                    suffixicon: IconButton(
                      onPressed: () {
                        setState(() {
                          is_Obscure = !is_Obscure;
                        });
                      },
                      icon: Icon(
                        is_Obscure ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  virticalspace(18),
                  Row(
                    children: [
                      const Checkbox(value: true, onChanged: null),
                      const Text('Remember me'),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font12mainblue,
                        ),
                      )
                    ],
                  ),
                  virticalspace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.pushNamed(Routes.onbordingscreen);
                      }
                    },
                    textStyle: TextStyles.font16white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
