import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/controller/app_controller.dart';
import 'package:spotify/custom_widget/custom_app_bar.dart';
import 'package:spotify/extension/padding_extension.dart';

import '../../custom_widget/list_custom_widget.dart';
import '../../helper/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    var isTrueOne = true.obs;
    var isTrueTwo = true.obs;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                tollBarHeight: 200,
                flexibleSpace: Stack(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/profile women.png"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ).onlyPadding(left: 20, top: 20),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset("assets/images/dots.png"),
                        ).onlyPadding(right: 30)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Center(
                child: MyText(
                  text: "Billie eilish",
                  fontSize: 18.sp,
                  fontFaimly: "staobold",
                  fontWeightText: FontWeight.w700,
                  textColor: AppColor.whiteColor,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Center(
                child: MyText(
                  text: "2 album , 67 track",
                  fontSize: 12.sp,
                  fontFaimly: "staobold",
                  fontWeightText: FontWeight.w400,
                  textColor: AppColor.whiteColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: MyText(
                  text:
                      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae """,
                  fontSize: 12.sp,
                  fontFaimly: "staobold",
                  fontWeightText: FontWeight.w400,
                  textColor: AppColor.hintTextColor,
                  textAlignText: TextAlign.center,
                ),
              ),
              MyText(
                text: "Albums",
                fontSize: 14.sp,
                fontFaimly: "staobold",
                fontWeightText: FontWeight.w700,
                textColor: AppColor.whiteColor,
              ).onlyPadding(left: 25),
              SizedBox(
                height: 17,
              ),
              SizedBox(
                height: 150.sp,
                child: ListView.builder(
                  itemCount: controller.profileWomenPhoto.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 120.sp,
                          height: 115.sp,
                          child: Image.asset(
                              "${controller.profileWomenPhoto[index]}"),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MyText(
                          text: "${controller.profileWomenText[index]}",
                          fontSize: 12.sp,
                          fontFaimly: "staobold",
                          fontWeightText: FontWeight.w700,
                          textColor: AppColor.whiteColor,
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 26,
              ),
              MyText(
                text: "Songs",
                fontSize: 14.sp,
                fontFaimly: "staobold",
                fontWeightText: FontWeight.w700,
                textColor: AppColor.whiteColor,
              ).onlyPadding(left: 25),
              SizedBox(
                height: 15,
              ),
              Obx(() {
                return ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.bottomNavigationColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      child: Image.asset("assets/images/Play.png"),
                      padding: EdgeInsets.all(12),
                    ),
                  ),
                  title: MyText(
                    text: "dont smile at me",
                    fontSize: 14.sp,
                    fontFaimly: "staobold",
                    fontWeightText: FontWeight.w700,
                    textColor: AppColor.whiteColor,
                  ),
                  subtitle: MyText(
                    text: "Billie Eilish",
                    fontSize: 12.sp,
                    fontFaimly: "staobold",
                    fontWeightText: FontWeight.w400,
                    textColor: AppColor.whiteColor,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MyText(
                        text: "5:33",
                        fontSize: 12.sp,
                        fontFaimly: "staobold",
                        fontWeightText: FontWeight.w400,
                        textColor: AppColor.whiteColor,
                      ).onlyPadding(right: 30),
                      GestureDetector(
                        onTap: () {
                          isTrueOne.value = !isTrueOne.value;
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: isTrueOne.value
                              ? Image.asset(
                                  "assets/images/Heart 1.png",
                                  color: AppColor.whiteColor,
                                )
                              : Image.asset(
                                  "assets/images/fill heart.png",
                                  color: AppColor.whiteColor,
                                ),
                        ),
                      )
                    ],
                  ),
                );
              }),
              Obx(() {
                return ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.bottomNavigationColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      child: Image.asset("assets/images/Play.png"),
                      padding: EdgeInsets.all(12),
                    ),
                  ),
                  title: MyText(
                    text: "lilbubblegum",
                    fontSize: 14.sp,
                    fontFaimly: "staobold",
                    fontWeightText: FontWeight.w700,
                    textColor: AppColor.whiteColor,
                  ),
                  subtitle: MyText(
                    text: "billie eilish",
                    fontSize: 12.sp,
                    fontFaimly: "staobold",
                    fontWeightText: FontWeight.w400,
                    textColor: AppColor.whiteColor,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MyText(
                        text: "5:33",
                        fontSize: 12.sp,
                        fontFaimly: "staobold",
                        fontWeightText: FontWeight.w400,
                        textColor: AppColor.whiteColor,
                      ).onlyPadding(right: 30),
                      GestureDetector(
                        onTap: () {
                          isTrueTwo.value = !isTrueTwo.value;
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: isTrueTwo.value
                              ? Image.asset(
                                  "assets/images/Heart 1.png",
                                  color: AppColor.whiteColor,
                                )
                              : Image.asset(
                                  "assets/images/fill heart.png",
                                  color: AppColor.whiteColor,
                                ),
                        ),
                      )
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
