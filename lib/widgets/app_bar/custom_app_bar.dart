import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    required this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  });

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillGray90001:
        return Container(
          height: getVerticalSize(
            121,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray90001,
          ),
        );
      case Style.bgFillRedA700:
        return Container(
          height: getVerticalSize(
            92,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.redA700,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFillGray90001,
  bgFillRedA700,
}
