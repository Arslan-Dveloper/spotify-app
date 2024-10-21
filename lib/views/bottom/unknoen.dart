import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/controller/app_controller.dart';
import 'package:spotify/custom_widget/custom_app_bar.dart';
import 'package:spotify/extension/padding_extension.dart';
import 'package:spotify/helper/constant.dart';

import '../../custom_widget/list_custom_widget.dart';

class Lyscric extends StatelessWidget {
  const Lyscric({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  "assets/images/Rectangle 7.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CustomAppBar(
                    flexibleSpace: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
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
                            ),
                          ),
                          Spacer(),
                          MyText(
                            text: "Bad Guy",
                            fontSize: 17.sp,
                            fontFaimly: "staobold",
                            fontWeightText: FontWeight.w700,
                            textColor: AppColor.whiteColor,
                          ),
                          Spacer(),
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              "assets/images/dots.png",
                              color: AppColor.hintTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  MyText(
                    text: " ( Verse 1 )",
                    fontSize: 14.sp,
                    fontFaimly: "staobold",
                    fontWeightText: FontWeight.w700,
                    textColor: AppColor.whiteColor,
                  ).onlyPadding(left: 20),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: MyText(
                      text: """Sleepin', you're on your tippy toes
          
Creepin' around like no one knows
          
Think you're so criminal
          
Bruises on both my knees for you
          
Don't say thank you or please
          
I do what I want when I'm wanting 
to
          """,
                      fontSize: 14.sp,
                      fontFaimly: "staobold",
                      fontWeightText: FontWeight.w700,
                      textColor: AppColor.whiteColor.withOpacity(0.3),
                    ),
                  ),
                  MyText(
                    text: " ( My soul? So cynical )",
                    fontSize: 14.sp,
                    fontFaimly: "staobold",
                    fontWeightText: FontWeight.w700,
                    textColor: AppColor.whiteColor,
                  ).onlyPadding(left: 40),
                  SizedBox(
                    height: 10,
                  ),
                  MyText(
                    text: " ( Verse 1 )",
                    fontSize: 14.sp,
                    fontFaimly: "staobold",
                    fontWeightText: FontWeight.w700,
                    textColor: AppColor.whiteColor,
                  ).onlyPadding(left: 20),
                  Center(
                    child: MyText(
                      text: """Sleepin', you're on your tippy toes
          
Creepin' around like no one knows
          
Think you're so criminal
          
Bruises on both my knees for you
          
Don't say thank you or please
          
I do what I want when I'm wanting 
to
          """,
                      fontSize: 14.sp,
                      fontFaimly: "staobold",
                      fontWeightText: FontWeight.w700,
                      textColor: AppColor.whiteColor.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppColor.backGroundColor,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          clipBehavior: Clip.antiAlias,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            "assets/images/women 5.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: MyText(
                          text: "Bad Guy",
                          fontSize: 12.sp,
                          fontFaimly: "staobold",
                          fontWeightText: FontWeight.w700,
                          textColor: AppColor.whiteColor,
                        ),
                        subtitle: MyText(
                          text: "Billie Eilish",
                          fontSize: 10.sp,
                          fontFaimly: "staobold",
                          fontWeightText: FontWeight.w700,
                          textColor: AppColor.subHeadingColor,
                        ),
                        trailing: Container(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Image.asset("assets/images/Heart 1.png"),
                          ),
                        ),
                      ),
                      Obx(() {
                        return SliderTheme(
                          data: SliderThemeData(
                            overlayColor: Colors.cyan,valueIndicatorColor: Colors.cyan
                          ),
                          child: Slider(
                            activeColor: AppColor.whiteColor,
                            inactiveColor: AppColor.blackColor,
                            max: 5.0,
                            min: 0.0,
                            divisions: 20,
                            value: controller.currentValue.value,
                            onChanged: (value) {
                              controller.currentValue.value = value;
                            },
                          ),
                        );
                      }),
                      Obx(() {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: controller.currentValue.value.toString(),
                                fontSize: 12.sp,
                                textColor: AppColor.subHeadingTwoColor,
                                fontWeightText: FontWeight.w400,
                                fontFaimly: 'staobold',
                              ),
                              MyText(
                                text: "${5 - controller.currentValue.value}",
                                fontSize: 12.sp,
                                textColor: AppColor.subHeadingTwoColor,
                                fontWeightText: FontWeight.w400,
                                fontFaimly: 'staobold',
                              )
                            ],
                          ),
                        );
                      }),
                      SizedBox(
                        height: 31,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/images/Repeate 3.png"),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/images/Previous.png"),
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: AppColor.greenColor),
                            child: Image.asset(
                              "assets/images/Pause.png",
                              scale: 4,
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/images/Next.png"),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/images/Shuffle 2.png"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
