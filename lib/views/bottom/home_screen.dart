import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/controller/app_controller.dart';
import 'package:spotify/custom_widget/custom_app_bar.dart';
import 'package:spotify/custom_widget/list_custom_widget.dart';
import 'package:spotify/extension/padding_extension.dart';
import 'package:spotify/helper/constant.dart';
import 'package:spotify/views/music_page.dart';
import 'package:spotify/views/music_page_two.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    var isTrue = true.obs;
    var isTrueTwo = true.obs;

    var screen = [
      MusicPage(),
      MusicPageTwo(),
      MusicPage(),
      MusicPageTwo(),
    ];

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppColor.backGroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                CustomAppBar(
                  title: Image.asset(
                    "assets/images/spotify icon.png",
                    scale: 6,
                  ),
                  centerTitle: true,
                  leadingWidget: Image.asset(
                    'assets/images/search.png',
                    scale: 4,
                  ).onlyPadding(left: 30),
                  actionList: [
                    Container(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/images/dots.png"),
                    ).onlyPadding(right: 30)
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 250.sp,
                      height: 110.sp,
                      decoration: BoxDecoration(
                        color: AppColor.greenColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: 'New album',
                                fontSize: 10.sp,
                                textColor: AppColor.whiteColor,
                                fontWeightText: FontWeight.w700,
                                fontFaimly: 'staobold',
                              ),
                              MyText(
                                text: 'Happier Than\nEver',
                                fontSize: 17.sp,
                                textColor: AppColor.whiteColor,
                                fontWeightText: FontWeight.w700,
                                fontFaimly: 'staobold',
                              ),
                              MyText(
                                text: 'Billie Eilish',
                                fontSize: 12.sp,
                                textColor: AppColor.whiteColor,
                                fontWeightText: FontWeight.w700,
                                fontFaimly: 'staobold',
                              ),
                            ],
                          ).onlyPadding(left: 25, top: 20),
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              "assets/images/Union.png",
                              scale: 5,
                            ),
                          ),
                        ],
                      ),
                    ).onlyPadding(top: 45.sp, left: 35),
                    Image.asset(
                      "assets/images/women 4.png",
                      scale: 3.5,
                    ).onlyPadding(left: 190, top: 3),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TabBar(
                      padding: EdgeInsets.only(left: 0),
                      physics: BouncingScrollPhysics(),
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: (value) {},
                      dividerColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: AppColor.greenColor,
                      unselectedLabelColor: AppColor.subHeadingColor,
                      isScrollable: true,
                      labelColor: AppColor.whiteColor,
                      labelStyle: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      indicatorPadding: EdgeInsets.only(bottom: 10),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      tabs: [
                        Tab(
                          text: "News",
                        ),
                        Tab(
                          text: "Videos",
                        ),
                        Tab(
                          text: "Artists",
                        ),
                        Tab(
                          text: "Podacast",
                        ),
                        Tab(
                          text: "Audio",
                        ),
                      ],
                    ).onlyPadding(top: 270),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Hero(
                      tag: "animation",
                      child: SizedBox(
                        height: 200.sp,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.images.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                controller.selectedIndex.value = index;
                                Get.to(screen[controller.selectedIndex.value]);
                              },
                              child: Material(
                                color: Colors.transparent,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(),
                                      width: 147,
                                      child: Image.asset(
                                          "${controller.images[index]}"),
                                      margin: EdgeInsets.only(left: 10),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: AppColor.bottomNavigationColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Container(
                                        child: Image.asset(
                                            "assets/images/Play.png"),
                                        padding: EdgeInsets.all(12),
                                      ),
                                    ).onlyPadding(top: 155, left: 90),
                                    MyText(
                                      text: '${controller.mainText[index]}',
                                      fontSize: 14.sp,
                                      fontWeightText: FontWeight.w700,
                                      fontFaimly: "staobold",
                                      textColor: AppColor.whiteColor,
                                    ).onlyPadding(top: 200, left: 30),
                                    MyText(
                                      text:
                                          '${controller.subHeadingText[index]}',
                                      fontSize: 11.sp,
                                      fontWeightText: FontWeight.w400,
                                      fontFaimly: "staobold",
                                      textColor: AppColor.whiteColor,
                                    ).onlyPadding(top: 230, left: 30)
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        MyText(
                          text: "Playlist",
                          fontSize: 18.sp,
                          fontFaimly: "staobold",
                          fontWeightText: FontWeight.w700,
                          textColor: AppColor.whiteColor,
                        ).onlyPadding(left: 25),
                        Spacer(),
                        MyText(
                          text: "see more",
                          fontSize: 11.sp,
                          fontFaimly: "staobold",
                          fontWeightText: FontWeight.w400,
                          textColor: AppColor.subHeadingColor,
                        ).onlyPadding(right: 20),
                      ],
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
                          text: "As It Was",
                          fontSize: 14.sp,
                          fontFaimly: "staobold",
                          fontWeightText: FontWeight.w700,
                          textColor: AppColor.whiteColor,
                        ),
                        subtitle: MyText(
                          text: "Harry Styles",
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
                              child: Image.asset(
                                "assets/images/fill heart.png",
                                scale: 3,
                                color: isTrueTwo.value
                                    ? AppColor.subHeadingColor
                                    : Colors.red,
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
                          text: "God Did",
                          fontSize: 14.sp,
                          fontFaimly: "staobold",
                          fontWeightText: FontWeight.w700,
                          textColor: AppColor.whiteColor,
                        ),
                        subtitle: MyText(
                          text: "DJ Khaled",
                          fontSize: 12.sp,
                          fontFaimly: "staobold",
                          fontWeightText: FontWeight.w400,
                          textColor: AppColor.whiteColor,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MyText(
                              text: "3:43",
                              fontSize: 12.sp,
                              fontFaimly: "staobold",
                              fontWeightText: FontWeight.w400,
                              textColor: AppColor.whiteColor,
                            ).onlyPadding(right: 30),
                            GestureDetector(
                              onTap: () {
                                isTrue.value = !isTrue.value;
                              },
                              child: Image.asset(
                                "assets/images/fill heart.png",
                                scale: 3,
                                color: isTrue.value
                                    ? AppColor.subHeadingColor
                                    : Colors.red,
                              ),
                            )
                          ],
                        ),
                      );
                    })
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
