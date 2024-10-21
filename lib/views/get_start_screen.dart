import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/extension/padding_extension.dart';
import 'package:spotify/helper/constant.dart';
import 'package:spotify/views/choose_mode.dart';

import '../custom_widget/list_custom_widget.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              image: AssetImage(
                "assets/images/women.png",
              ),
              fit: BoxFit.cover,
              width: width,
              height: height,
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
                  height: 300,
                ),
                MyText(
                  text: 'Enjoy listening to music',
                  textColor: AppColor.whiteColor,
                  fontWeightText: FontWeight.bold,
                  fontSize: 25,
                  fontFaimly: "staobold",
                ).onlyPadding(left: 65),
                SizedBox(
                  height: 21,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 73),
                  child: MyText(
                    text:
                        """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.""",
                    textColor: AppColor.subHeadingColor,
                    fontSize: 15,
                    textAlignText: TextAlign.center,
                    fontFaimly: "staolight",
                  ),
                ),
                SizedBox(
                  height: 37,
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
                        Get.to(ChooseMode());
                      },
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: MyText(
                            text: "Get started",
                            textColor: AppColor.containerTextColor,
                            fontSize: 22,
                            fontWeightText: FontWeight.w700,
                          ),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
