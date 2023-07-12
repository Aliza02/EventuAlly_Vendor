import 'package:eventually_vendor/widget/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colors.dart';
import '../constants/font.dart';
import '../widget/button.dart';
import '../widget/googleButton.dart';
import '../widget/heading.dart';
import '../widget/subheading.dart';
import '../widget/textfield.dart';
import '../widget/passwordfield.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
          width: Get.width,
          height: Get.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: Get.height * 0.04),
                child: logo(width: Get.width * 0.9, height: Get.height * 0.15),
              ),
              heading(
                title: 'Welcome Back',
                heightFromTop: Get.height * 0.008,
                fontSize: Get.width * 0.11,
              ),
              subHeading(
                title: "Welcome back, you've been missed.",
                fontSize: Get.width * 0.04,
              ),
              Container(
                height: Get.height * 0.07,
                margin: EdgeInsets.only(top: Get.height * 0.03),
                // child: const textFormField(title: 'Email'),
              ),
              Container(
                height: Get.height * 0.07,
                margin: EdgeInsets.only(top: Get.height * 0.03),
                // child: const PasswordField(title: 'Password'),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    height: Get.height * 0.01,
                    width: Get.width * 0.08,
                    child: Checkbox(
                      activeColor: AppColors.pink,
                      side: const BorderSide(
                        color: AppColors.pink,
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: AppColors.pink,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  Text(
                    'Remember me',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: Get.width * 0.04,
                      fontFamily: AppFonts.manrope,
                      color: AppColors.grey,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/forgetpassword');
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontFamily: AppFonts.manrope,
                        fontWeight: AppFonts.bold,
                        color: AppColors.pink,
                        fontSize: Get.width * 0.04,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: Get.width * 0.4,
                height: Get.height * 0.06,
                margin: EdgeInsets.only(top: Get.height * 0.04),
                child: button(
                  label: 'Login',
                  onpressed: () {
                    Get.toNamed('/drawer');
                  },
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: AppColors.pink,
                      height: 20.0,
                      thickness: 2,
                      indent: 9,
                      endIndent: 9,
                    ),
                  ),
                  Text(
                    'or continue with',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontFamily: AppFonts.manrope,
                      fontWeight: AppFonts.regular,
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: AppColors.pink,
                      height: 20.0,
                      thickness: 2,
                      indent: 9,
                      endIndent: 9,
                    ),
                  ),
                ],
              ),
              const googleButton(),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      fontSize: Get.width * 0.04,
                      color: AppColors.grey,
                      fontFamily: AppFonts.manrope,
                      fontWeight: AppFonts.medium,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed('/signup');
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: Get.width * 0.04,
                        color: AppColors.pink,
                        fontFamily: AppFonts.manrope,
                        fontWeight: AppFonts.extraBold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
