import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/custom_widget/custom_app_bar.dart';
import 'package:spotify/extension/padding_extension.dart';
import 'package:spotify/views/sign_in.dart';

import '../custom_widget/list_custom_widget.dart';
import '../helper/constant.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isHidden = true.obs;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(flexibleSpace: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: AppColor.whiteColor.withOpacity(0.1)),
                      child: Image.asset(
                        'assets/images/arrow back.png',
                        scale: 3.5,
                      ),
                    ).onlyPadding(left: 20, top: 30),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/spotify icon.png",
                      scale: 7,
                    ),
                  ).onlyPadding(left: 100, top: 30)
                ],
              ),),
              SizedBox(
                height: 40,
              ),
              Center(
                child: MyText(
                  text: 'Register',
                  textColor: AppColor.whiteColor,
                  fontWeightText: FontWeight.bold,
                  fontSize: 30,
                  fontFaimly: "staobold",
                ),
              ),
              // Row(
              //   children: [
              //     MyText(
              //       text: 'If you need any support',
              //       textColor: AppColor.whiteColor,
              //       fontWeightText: FontWeight.w400,
              //       fontSize: 12,
              //       fontFaimly: "staobold",
              //     ),
              //     MyText(
              //       text: 'If you need any support',
              //       textColor: AppColor.whiteColor,
              //       fontWeightText: FontWeight.w400,
              //       fontSize: 12,
              //       fontFaimly: "staobold",
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "If you need any support",
                        style: TextStyle(
                            fontFamily: "staobold",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.whiteColor),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        text: " click here",
                        style: TextStyle(
                            fontFamily: "staobold",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.greenColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Center(
                child: MyTextFormField(
                  hintText: "Full Name",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: MyTextFormField(
                  hintText: "Enter email",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Obx(() {
                  return MyTextFormField(
                    hintText: "Password",
                    obsecureText: isHidden.value,
                    suffixIconWidget: GestureDetector(
                      onTap: () {
                        isHidden.value = !isHidden.value;
                      },
                      child: isHidden.value
                          ? Image.asset(
                              'assets/images/Hide.png',
                              scale: 3.7,
                            ).onlyPadding(right: 22)
                          : Image.asset(
                        'assets/images/eye.png',
                        scale: 3.8,
                      ).onlyPadding(right: 20) ,
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 33,
              ),
              // Center(
              //   child: GestureDetector(
              //     onTap: () {
              //       Get.to(SignIn());
              //     },
              //     child: Container(
              //       width: 329,
              //       height: 92,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(30),
              //         color: AppColor.greenColor,
              //       ),
              //       child: Center(
              //         child: MyText(
              //           text: "create account",
              //           textColor: AppColor.containerTextColor,
              //           fontSize: 22,
              //           fontWeightText: FontWeight.w700,
              //           fontFaimly: "staobold",
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.greenColor,
                      fixedSize: Size(350, 92),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {
                      Get.to(SignIn());
                    },
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: MyText(
                          text: "Sign In",
                          textColor: AppColor.containerTextColor,
                          fontSize: 22,
                          fontWeightText: FontWeight.w700,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 39,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 45,
                      endIndent: 20,
                    ),
                  ),
                  MyText(
                    text: "Or",
                    fontSize: 12,
                    fontWeightText: FontWeight.w400,
                    fontFaimly: "staobold",
                    textColor: AppColor.subHeadingColor,
                  ),
                  Expanded(
                    child: Divider(
                      indent: 20,
                      endIndent: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 39,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      "assets/images/google (2).png",
                      scale: 2.5,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      "assets/images/apple.png",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Do You Have An Account?",
                        style: TextStyle(
                            fontFamily: "staobold",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColor.whiteColor),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(SignIn());
                          },
                        text: " Sign In",
                        style: TextStyle(
                            fontFamily: "staobold",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColor.greenColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
