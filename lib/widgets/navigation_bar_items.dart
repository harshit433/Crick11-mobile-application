import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class navigation_bar extends StatelessWidget {
  navigation_bar({
    required this.item,
    required this.primary,
    required this.selected,
    required this.height,
    this.bgcolor,
    required this.pressed,
    this.activeiconcolor,
    required this.onstart_index,
  });
  List<navigation_bar_item> item;
  final int primary;
  final int selected;
  final int onstart_index;
  final double height;
  final Color? bgcolor;
  final bool pressed;
  final Color? activeiconcolor;

  setcurrent() {
    for (int i = 0; i < item.length; i++) {
      if (i == selected) {
        item[i].col = (bgcolor == Colors.white) ? Colors.black : Colors.white;
        item[i].state = true;
        item[i].iconcolor =
            (activeiconcolor != null) ? activeiconcolor : bgcolor;
      } else {
        item[i].col = null;

        item[i].state = false;
        item[i].iconcolor =
            (bgcolor == Colors.white) ? Colors.black : Colors.white;
      }
    }
    return item;
  }

  setdefault() {
    for (int i = 0; i < item.length; i++) {
      if (i == onstart_index) {
        item[i].col = (bgcolor == Colors.white) ? Colors.black : Colors.white;
        item[i].state = true;
        item[i].iconcolor =
            (activeiconcolor != null) ? activeiconcolor : bgcolor;
      } else {
        item[i].iconcolor =
            (bgcolor == Colors.white) ? Colors.black : Colors.white;
      }
    }
    return item;
  }

  @override
  build(BuildContext context) {
    return Padding(
      padding: getPadding(bottom: 8.0, left: 12, right: 12),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 40)],
            borderRadius: BorderRadius.circular(26),
            color: bgcolor),
        height: height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: pressed ? setcurrent() : setdefault(),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class navigation_bar_item extends StatelessWidget {
  navigation_bar_item({
    required this.symbol,
    required this.name,
    required this.state,
    required this.height,
    required this.width,
    this.tap,
  });

  String symbol;
  String name;
  bool state;
  void Function()? tap;
  Color? col;
  Color? iconcolor = Colors.white;
  double height;
  double width;

  @override
  build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: col,
        ),
        child: Padding(
          padding: getPadding(left: 8.0, right: 10, top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                symbol,
                color: iconcolor,
                width: getHorizontalSize(30),
                height: getVerticalSize(30),
              ),
              Visibility(
                child: Padding(
                  padding: getPadding(left: 8.0),
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: iconcolor, fontWeight: FontWeight.w600),
                  ),
                ),
                visible: state,
              )
            ],
          ),
        ),
      ),
      onTap: tap,
    );
  }
}
