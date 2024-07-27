import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';

class recharge_and_walletButtons extends StatelessWidget {
  const recharge_and_walletButtons({
    super.key,
    required this.item,
    required this.selected,
  });

  final dynamic item;
  final int selected;

  selected_tab(Color selected_color) {
    for (int i = 0; i < item.length; i++) {
      if (i == selected) {
        item[i].color = selected_color;
      }
    }
    return item;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: selected_tab(Colors.blue),
      ),
    );
  }
}

class couponButtons extends StatelessWidget {
  const couponButtons({
    super.key,
    required this.item,
    required this.selected,
  });

  final dynamic item;
  final int selected;

  selected_tab(Color selected_color) {
    for (int i = 0; i < item.length; i++) {
      if (i == selected) {
        item[i].color = selected_color;
      }
    }
    return item;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: selected_tab(Colors.blue),
      ),
    );
  }
}

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button({
    super.key,
    required this.color,
    required this.title,
    required this.height,
    required this.width,
    this.tap,
  });

  Color color;
  String title;
  void Function()? tap;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(right: 31),
      child: Container(
        padding: getPadding(top: 5, bottom: 5),
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: color, width: getSize(2)),
            borderRadius: BorderRadius.circular(getSize(10))),
        child: InkWell(
          onTap: tap,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(title,
                    style: TextStyle(
                        color: color,
                        fontFamily: "Inter",
                        fontSize: getFontSize(11),
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Coupon_Button extends StatelessWidget {
  Coupon_Button({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.height,
    required this.width,
    this.tap,
  });

  Color color;
  String title;
  String subtitle;
  void Function()? tap;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 21.0),
      child: Container(
        padding: getPadding(top: 5, bottom: 5, left: 10),
        width: width,
        height: height,
        decoration: BoxDecoration(
            border: Border.all(color: color, width: getSize(2)),
            borderRadius: BorderRadius.circular(getSize(10))),
        child: InkWell(
          onTap: tap,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        color: color,
                        fontFamily: "Inter",
                        fontSize: getFontSize(13),
                        fontWeight: FontWeight.w800)),
                Padding(
                  padding: getPadding(top: 6.0),
                  child: Text(subtitle,
                      style: TextStyle(
                          color: color,
                          fontFamily: "Inter",
                          fontSize: getFontSize(11),
                          fontWeight: FontWeight.w600)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
