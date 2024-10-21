import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/controller/app_controller.dart';
import 'package:spotify/custom_widget/custom_app_bar.dart';
import 'package:spotify/extension/padding_extension.dart';
import 'package:spotify/helper/constant.dart';
import '../custom_widget/list_custom_widget.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPageTwo extends StatelessWidget {
  const MusicPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    var isTrueOne = false.obs;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              CustomAppBar(
                flexibleSpace: Row(
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
                      ).onlyPadding(left: 20),
                    ),
                    MyText(
                      text: 'Now playing',
                      fontSize: 16.sp,
                      textColor: AppColor.whiteColor,
                      fontWeightText: FontWeight.w700,
                      fontFaimly: 'staobold',
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      child: Image.asset("assets/images/dots.png"),
                    ).onlyPadding(right: 20)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Hero(
                tag: "animation",
                child: Center(
                  child: Container(

                    child: Image.asset("assets/images/man.png",scale: 1.7,),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Bad Guy',
                          fontSize: 18.sp,
                          textColor: AppColor.whiteColor,
                          fontWeightText: FontWeight.w700,
                          fontFaimly: 'staobold',
                        ),
                        MyText(
                          text: 'Billie Eilish',
                          fontSize: 16.sp,
                          textColor: AppColor.subHeadingTwoColor,
                          fontWeightText: FontWeight.w400,
                          fontFaimly: 'staobold',
                        ),
                      ],
                    ),
                    // Image.asset(
                    //   "assets/images/Heart 1.png",
                    //   scale: 3.5,
                    // )
                    Obx(() {
                      return GestureDetector(
                        onTap: () {
                          isTrueOne.value = !isTrueOne.value;
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: isTrueOne.value
                              ? Image.asset(
                                  "assets/images/Heart 1.png",
                                  color: AppColor.whiteColor,
                                  scale: 3.5,
                                )
                              : Image.asset(
                                  "assets/images/fill heart.png",
                                  color: AppColor.whiteColor,
                                  scale: 2.5,
                                ),
                        ),
                      );
                    })
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Obx(() {
                return Slider(
                  max: 5.0,
                  min: 0.0,
                  divisions: 20,
                  value: controller.currentValue.value,
                  onChanged: (value) {
                    controller.currentValue.value = value;
                  },
                  inactiveColor: AppColor.bottomNavigationColor,
                  activeColor: AppColor.whiteColor,
                  autofocus: false,
                  secondaryActiveColor: Colors.transparent,
                  allowedInteraction: SliderInteraction.tapAndSlide,
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
              // Obx(() {
              //   return Slider(
              //     min: 0,
              //     max: controller.duration.value.inSeconds.toDouble(),
              //     value: controller.position.value.inSeconds.toDouble(),
              //     onChanged: (value) {
              //       final position = Duration(seconds: value.toInt());
              //       controller.player.value.seek(position);
              //       controller.player.value.resume();
              //     },
              //   );
              // }),
              // Container(
              //   padding: EdgeInsets.all(20),
              //   child: Obx(() {
              //     return Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         MyText(
              //           text:
              //           '${controller.formatTime(
              //               controller.position.value.inSeconds)}',
              //           fontSize: 18.sp,
              //           textColor: AppColor.whiteColor,
              //           fontWeightText: FontWeight.w700,
              //           fontFaimly: 'staobold',
              //         ),
              //         MyText(
              //           text:
              //           '${controller.formatTime(
              //               controller.duration.value.inSeconds -
              //                   controller.position.value.inSeconds)}',
              //           fontSize: 18.sp,
              //           textColor: AppColor.whiteColor,
              //           fontWeightText: FontWeight.w700,
              //           fontFaimly: 'staobold',
              //         )
              //       ],
              //     );
              //   }),
              // )
              SizedBox(
                height: 70,
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
                height: 70,
              ),
              Center(
                child: Container(
                  width: 30,
                  height: 30,
                  child: Image.asset("assets/images/Left 3.png"),
                ),
              ),
              Center(
                child: MyText(
                  text: 'Lyrics',
                  fontSize: 12.sp,
                  textColor: AppColor.subHeadingColor,
                  fontWeightText: FontWeight.w700,
                  fontFaimly: 'staobold',
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
