import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  Widget? leadingWidget;
  Widget? title;
  Widget? flexibleSpace;
  List<Widget>? actionList;
  bool? centerTitle;
  double? tollBarHeight;
  Color? appBarColor;
  ShapeBorder? borderShape;

  CustomAppBar({
    this.title,
    this.actionList,
    this.leadingWidget,
    this.centerTitle,
    this.flexibleSpace,
    this.tollBarHeight,
    this.appBarColor,
    this.borderShape,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor ?? Colors.transparent,
      automaticallyImplyLeading: false,
      leading: leadingWidget,
      actions: actionList,
      title: title,
      centerTitle: centerTitle,
      flexibleSpace: flexibleSpace,
      toolbarHeight: tollBarHeight,
      shape: borderShape,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(200);
}
