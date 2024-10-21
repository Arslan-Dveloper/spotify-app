import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/controller/app_controller.dart';
import 'package:spotify/custom_widget/custom_app_bar.dart';
import 'package:spotify/custom_widget/list_custom_widget.dart';
import 'package:spotify/extension/padding_extension.dart';
import 'package:spotify/helper/constant.dart';

class ArticsPage extends StatelessWidget {
  const ArticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                tollBarHeight: 340,
                appBarColor: AppColor.bottomNavigationColor,
                borderShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
                flexibleSpace: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                        MyText(
                          text: "Profile",
                          fontSize: 15.sp,
                          fontFaimly: "staobold",
                          fontWeightText: FontWeight.w700,
                          textColor: AppColor.whiteColor,
                        ).onlyPadding(left: 120, top: 30)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Image.asset("assets/images/app bar man.png"),
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Center(
                      child: MyText(
                        text: "Soroushnorozyui@gmail.com",
                        fontSize: 10.sp,
                        fontFaimly: "staobold",
                        fontWeightText: FontWeight.w400,
                        textColor: AppColor.subHeadingColor,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: MyText(
                        text: "Soroushnrz",
                        fontSize: 14.sp,
                        fontFaimly: "staobold",
                        fontWeightText: FontWeight.w700,
                        textColor: AppColor.whiteColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            MyText(
                              text: "778",
                              fontSize: 18.sp,
                              fontFaimly: "staobold",
                              fontWeightText: FontWeight.w700,
                              textColor: AppColor.whiteColor,
                            ),
                            MyText(
                              text: "Followes",
                              fontSize: 12.sp,
                              fontFaimly: "staobold",
                              fontWeightText: FontWeight.w400,
                              textColor: AppColor.subHeadingColor,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            MyText(
                              text: "243",
                              fontSize: 18.sp,
                              fontFaimly: "staobold",
                              fontWeightText: FontWeight.w700,
                              textColor: AppColor.whiteColor,
                            ),
                            MyText(
                              text: "Followes",
                              fontSize: 12.sp,
                              fontFaimly: "staobold",
                              fontWeightText: FontWeight.w400,
                              textColor: AppColor.subHeadingColor,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyText(
                text: "Public playlists",
                fontFaimly: "staobold",
                fontSize: 14.sp,
                fontWeightText: FontWeight.w700,
                textColor: AppColor.whiteColor,
              ).onlyPadding(left: 20),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: controller.favouriteImages.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      child:
                          Image.asset("${controller.favouriteImages[index]}"),
                    ),
                    title: MyText(
                      text: "${controller.favouriteText[index]}",
                      fontFaimly: "staobold",
                      fontSize: 14.sp,
                      fontWeightText: FontWeight.w700,
                      textColor: AppColor.whiteColor,
                    ),
                    subtitle: MyText(
                      text: "${controller.favouriteSubText[index]}",
                      fontFaimly: "staobold",
                      fontSize: 11.sp,
                      fontWeightText: FontWeight.w400,
                      textColor: AppColor.whiteColor,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MyText(
                          text: "5:33",
                          fontFaimly: "staobold",
                          fontSize: 12.sp,
                          fontWeightText: FontWeight.w400,
                          textColor: AppColor.whiteColor,
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
