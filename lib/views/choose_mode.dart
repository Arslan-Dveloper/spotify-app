import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/custom_widget/list_custom_widget.dart';
import 'package:spotify/extension/padding_extension.dart';
import 'package:spotify/helper/constant.dart';

import 'choice_screen.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    //var currentIndex = 0;
    var currentIndex = 0.obs;
    var images = [
      "assets/images/Moon.png",
      "assets/images/Sun 1.png",
    ];

    var selectedImage = images.first.obs;
    var text = [
      "Dark mode",
      "Light mode",
    ];

    var isSelected = 0.obs;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Image(
            //   image: AssetImage(
            //     "assets/images/women 2.png",
            //   ),
            //   fit: BoxFit.cover,
            //   width: width,
            //   height: height,
            // ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/man chose.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 196,
                  height: 59,
                  child: Image.asset('assets/images/spotify icon.png'),
                ).onlyPadding(left: 97, top: 37),
                SizedBox(
                  height: 270,
                ),
                Center(
                  child: MyText(
                    text: "Choose mode",
                    fontFaimly: "staobold",
                    fontSize: 22,
                    fontWeightText: FontWeight.w700,
                    textColor: AppColor.whiteColor,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          currentIndex.value = index;
                          Get.changeTheme(ThemeData.dark());
                        },
                        child: Obx(() {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: currentIndex.value == index
                                          ? AppColor.greenColor
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ).onlyPadding(top: 25, left: 10),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70),
                                      color: AppColor.subHeadingColor
                                          .withOpacity(0.97),
                                    ),
                                    child: Container(
                                        padding: EdgeInsets.all(15),
                                        child: Image.asset(images[index])),
                                  ),
                                ],
                              ).onlyPadding(right: 70, left: 10),
                              MyText(
                                text: text[index],
                                fontFaimly: "staobold",
                                fontSize: 17,
                                fontWeightText: FontWeight.w900,
                                textColor: AppColor.whiteColor,
                              ),
                            ],
                          );
                        }),
                      );
                    },
                  ),
                ).onlyPadding(left: 85),
                // Obx(
                //   () {
                //     return Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: images.map(
                //         (element) {
                //           return GestureDetector(
                //             onTap: () {
                //               selectedImage.value = element;
                //               currentIndex = int.parse(element);
                //               print(currentIndex);
                //             },
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Stack(
                //                   children: [
                //                     Container(
                //                       width: 50,
                //                       height: 50,
                //                       decoration: BoxDecoration(
                //                           borderRadius:
                //                               BorderRadius.circular(50),
                //                           color: selectedImage.value == element
                //                               ? AppColor.greenColor
                //                               : Colors.transparent),
                //                     ).onlyPadding(top: 25, left: 10),
                //                     Container(
                //                       width: 70,
                //                       height: 70,
                //                       decoration: BoxDecoration(
                //                         borderRadius: BorderRadius.circular(70),
                //                         color: AppColor.subHeadingColor
                //                             .withOpacity(0.97),
                //                       ),
                //                       child: Container(
                //                           padding: EdgeInsets.all(15),
                //                           child:
                //                               Image.asset(element.toString())),
                //                     ),
                //                   ],
                //                 ).onlyPadding(right: 70, left: 25),
                //                 MyText(
                //                   text: "${text[currentIndex]}",
                //                   fontFaimly: "staobold",
                //                   fontSize: 17,
                //                   fontWeightText: FontWeight.w900,
                //                   textColor: AppColor.whiteColor,
                //                 ).onlyPadding(left: 20),
                //               ],
                //             ),
                //           );
                //         },
                //       ).toList(),
                //     ).onlyPadding(left: 25);
                //   },
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Obx(() {
                //       return MySelectedContainer(
                //         Image: Image.asset("assets/images/Moon.png"),
                //         text: "Dark mood",
                //         onTapContainer: () {
                //           currentIndex.value = 0;
                //         },
                //         index: 1,
                //         indexTwo: currentIndex.value,
                //       );
                //     }),
                //     Obx(() {
                //       return MySelectedContainer(
                //         Image: Image.asset("assets/images/Sun 1.png"),
                //         text: "Light Mood",
                //         onTapContainer: () {
                //           currentIndex.value = 1;
                //         },
                //         index: 1,
                //         indexTwo: currentIndex.value,
                //       );
                //     }),
                //   ],
                // ),
                SizedBox(
                  height: 40,
                ),
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
                        Get.to(ChoiceScreen());
                      },
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: MyText(
                            text: "Continue",
                            textColor: AppColor.containerTextColor,
                            fontSize: 22,
                            fontWeightText: FontWeight.w700,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MySelectedContainer extends StatelessWidget {
  VoidCallback? onTapContainer;
  Widget? Image;
  String? text;
  int index;
  int? indexTwo;

  MySelectedContainer({
    this.onTapContainer,
    this.text,
    this.Image,
    required this.index,
    this.indexTwo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: index == indexTwo
                        ? AppColor.greenColor
                        : Colors.transparent),
              ).onlyPadding(top: 25, left: 10),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: AppColor.subHeadingColor.withOpacity(0.97),
                ),
                child: Container(padding: EdgeInsets.all(15), child: Image),
              ),
            ],
          ).onlyPadding(right: 70, left: 25),
          MyText(
            text: text,
            fontFaimly: "staobold",
            fontSize: 17,
            fontWeightText: FontWeight.w900,
            textColor: AppColor.whiteColor,
          ).onlyPadding(left: 20),
        ],
      ),
    );
  }
}
