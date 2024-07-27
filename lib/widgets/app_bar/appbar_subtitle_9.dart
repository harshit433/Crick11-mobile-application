import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle9 extends StatelessWidget {
  AppbarSubtitle9({
    required this.text,
    this.margin,
    this.onTap,
  });

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterExtraBold14.copyWith(
            color: ColorConstant.whiteA700,
          ),
        ),
      ),
    );
  }
}
