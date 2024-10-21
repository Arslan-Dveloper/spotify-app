import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:spotify/extension/padding_extension.dart';
import 'package:spotify/helper/constant.dart';
import 'bottom/artics_page.dart';
import 'bottom/home_screen.dart';
import 'bottom/profile_screen.dart';
import 'bottom/unknoen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var icon = [
      "assets/images/home 3.png",
      "assets/images/Discovery 1.png",
      "assets/images/Heart 1.png",
      "assets/images/Profile 1.png",
    ];

    var selected = icon[0].obs;

    List<Widget> _layout = [
      HomeScreen(),
      Lyscric(),
      ArticsPage(),
      ProfileScreen(),
    ];

    var currentIndex = 0.obs;
    var currentIndexTwo = 0.obs;
    return Scaffold(
      body: Obx(
        //() => _layout[icon.indexOf(selected.value)],
        () => _layout[icon.indexOf(selected.value)],
      ),
      backgroundColor: AppColor.backGroundColor,
      // bottomNavigationBar: Obx(() {
      //   return BottomNavigationBar(
      //     showSelectedLabels: false,
      //     currentIndex: currentIndex.value,
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: AppColor.bottomNavigationColor,
      //     selectedItemColor: AppColor.greenColor,
      //     unselectedItemColor: AppColor.whiteColor,
      //     showUnselectedLabels: false,
      //     elevation: 0,
      //     enableFeedback: false,
      //     useLegacyColorScheme: false,
      //     onTap: (value) {
      //       currentIndex.value = value;
      //     },
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Container(
      //             width: 30,
      //             height: 30,
      //             child: Image.asset(
      //               "assets/images/home 3.png",
      //             ),
      //           ),
      //           label: "home"),
      //       BottomNavigationBarItem(
      //           icon: Container(
      //             width: 30,
      //             height: 30,
      //             child: Image.asset("assets/images/Discovery 1.png"),
      //           ),
      //           label: "home"),
      //       BottomNavigationBarItem(
      //           icon: Container(
      //             width: 30,
      //             height: 30,
      //             child: Image.asset("assets/images/Heart 1.png"),
      //           ),
      //           label: "home"),
      //       BottomNavigationBarItem(
      //           icon: Container(
      //             width: 30,
      //             height: 30,
      //             child: Image.asset("assets/images/Profile 1.png"),
      //           ),
      //           label: "home")
      //     ],
      //   );
      // }),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(color: AppColor.bottomNavigationColor),
        child: Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: icon.map(
              (e) {
                return GestureDetector(
                  onTap: () {
                    selected.value = e;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: selected.value == e
                          ? Border(
                              top: BorderSide(
                                  color: AppColor.greenColor, width: 3))
                          : Border.all(color: Colors.transparent),
                    ),
                    child: Center(
                      child: Container(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          e.toString(),
                          color: selected.value == e
                              ? AppColor.greenColor
                              : AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ).onlyPadding(left: 20, right: 20),
                );
              },
            ).toList(),
          );
        }),
      ),
    );
  }
}
