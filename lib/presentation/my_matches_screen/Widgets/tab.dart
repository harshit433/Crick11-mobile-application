import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';

// ignore: must_be_immutable
class tab_bar extends StatelessWidget {
  tab_bar({
    required this.item,
    required this.selected,
    required this.selected_color,
    required this.bgcolor,
  });

  List<tab> item;
  int selected;
  Color selected_color;
  Color bgcolor;

  selected_tab() {
    for (int i = 0; i < item.length; i++) {
      if (i == selected) {
        item[i].color = selected_color;
        item[i].underline_color = selected_color;
      }
    }
    return item;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(left: 25, right: 25),
      height: getVerticalSize(47),
      color: bgcolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: selected_tab(),
      ),
    );
  }
}

// ignore: must_be_immutable
class tab extends StatelessWidget {
  tab({
    required this.color,
    required this.symbol,
    required this.title,
    this.tap,
    required this.underline_color,
  });

  Color color;
  IconData symbol;
  String title;
  Color underline_color;
  void Function()? tap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: underline_color, width: getSize(4)))),
      height: getVerticalSize(34.13),
      child: InkWell(
        onTap: tap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              symbol,
              color: color,
              size: getSize(19),
            ),
            Padding(
              padding: getPadding(left: 4.0),
              child: Text(title,
                  style: TextStyle(
                    color: color,
                    fontSize: getFontSize(
                      11,
                    ),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
