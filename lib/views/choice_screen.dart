import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/custom_widget/custom_app_bar.dart';
import 'package:spotify/extension/padding_extension.dart';
import 'package:spotify/helper/constant.dart';
import 'package:spotify/views/register_screen.dart';
import 'package:spotify/views/sign_in.dart';

import '../custom_widget/list_custom_widget.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentIndex = 0.obs;
    var text = ["Register", "Sign in"];
    var selectedText = text.first.obs;
    var screen = [
      RegisterScreen(),
      SignIn(),
    ];

    var isTrue = true.obs;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Image.asset("assets/images/Union.png"),
            ).onlyPadding(left: 200),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: Image.asset(
                    "assets/images/Union (1).png",
                    scale: 4,
                  ),
                )),
            Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  "assets/images/women 3.png",
                  scale: 4,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  flexibleSpace: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor.whiteColor.withOpacity(0.1)),
                      child: Image.asset(
                        'assets/images/arrow back.png',
                        scale: 3.5,
                      ),
                    ).onlyPadding(left: 20, top: 30),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Container(
                    width: 196,
                    height: 59,
                    child: Image.asset('assets/images/spotify icon.png'),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Center(
                  child: MyText(
                    text: 'Enjoy listening to music',
                    textColor: AppColor.whiteColor,
                    fontWeightText: FontWeight.bold,
                    fontSize: 26,
                    fontFaimly: "staobold",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text:
                      'Spotify is a proprietary Swedish audio streaming and media services provider',
                  textColor: AppColor.subHeadingTwoColor,
                  fontFaimly: "staolight",
                  fontSize: 16,
                  textAlignText: TextAlign.center,
                ).onlyPadding(left: 40, right: 40),
                SizedBox(
                  height: 30,
                ),
                // Obx(() {
                //   return Row(
                //     children: text.map(
                //       (e) {
                //         return GestureDetector(
                //           onTap: () {
                //             selectedText.value = e;
                //             Get.to(screen[]);
                //           },
                //           child: Container(
                //             width: 147,
                //             height: 70,
                //             decoration: BoxDecoration(
                //               color: selectedText.value == e
                //                   ? AppColor.greenColor
                //                   : Colors.transparent,
                //               // color: currentIndex.value == index
                //               //     ? AppColor.greenColor
                //               //     : Colors.transparent,
                //               borderRadius: BorderRadius.circular(30),
                //             ),
                //             child: Center(
                //               child: MyText(
                //                 // text: "${text[index]}",
                //                 text: e.toString(),
                //                 fontSize: 19,
                //                 fontFaimly: "staolight",
                //                 textColor: AppColor.whiteColor,
                //                 fontWeightText: FontWeight.w700,
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ).toList(),
                //   );
                // }),
                SizedBox(
                  height: 70,
                  child: Center(
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            currentIndex.value = index;
                            Get.to(screen[currentIndex.value]);

                          },
                          child: Obx(() {
                            return Container(
                              width: 147,
                              height: 70,
                              decoration: BoxDecoration(
                                color: currentIndex.value == index
                                    ? AppColor.greenColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: MyText(
                                  text: "${text[index]}",
                                  fontSize: 19,
                                  fontFaimly: "staobold",
                                  textColor: AppColor.whiteColor,
                                  fontWeightText: FontWeight.w700,
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ),
                // Obx(() {
                //   return Container(
                //     height: 100,
                //     decoration: BoxDecoration(
                //       color: isTrue.value
                //           ? AppColor.greenColor
                //           : Colors.transparent,
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     child: Stack(
                //       children: [
                //         Row(
                //           children: [
                //             Center(
                //               child: MyText(
                //                 text: "Register",
                //                 fontSize: 19,
                //                 fontFaimly: "staobold",
                //                 textColor: AppColor.whiteColor,
                //                 fontWeightText: FontWeight.w700,
                //               ),
                //             ),
                //             Center(
                //               child: MyText(
                //                 text: "Sign In",
                //                 fontSize: 19,
                //                 fontFaimly: "staobold",
                //                 textColor: AppColor.whiteColor,
                //                 fontWeightText: FontWeight.w700,
                //               ),
                //             )
                //           ],
                //         ),
                //       ],
                //     ),
                //   );
                // })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
