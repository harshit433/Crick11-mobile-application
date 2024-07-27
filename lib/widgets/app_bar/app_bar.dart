import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';

// ignore: must_be_immutable
class appbar extends StatelessWidget implements PreferredSizeWidget {
  appbar({
    required this.height,
    required this.team1,
    required this.team2,
    required this.time,
    required this.backbutton,
    required this.walletbutton,
  });

  double height;
  String team1;
  String team2;
  String time;
  void Function() backbutton;
  void Function() walletbutton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: backbutton,
        child: const Icon(Icons.arrow_back),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$team1 VS $team2'),
          Text(
            time,
            style: TextStyle(
                fontSize: getFontSize(17), fontWeight: FontWeight.w800),
          )
        ],
      ),
      titleSpacing: 0,
      centerTitle: false,
      actions: [
        GestureDetector(
          onTap: walletbutton,
          child: Stack(alignment: Alignment.centerRight, children: [
            Padding(
              padding: getPadding(right: 10.0),
              child: DottedBorder(
                  strokeWidth: 2,
                  dashPattern: const [6, 6],
                  radius: const Radius.circular(5),
                  color: Colors.white,
                  borderType: BorderType.RRect,
                  child: Padding(
                    padding: getPadding(left: 5.0, right: 5, top: 4, bottom: 4),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.currency_rupee,
                          color: Colors.white,
                          size: 19,
                        ),
                        Text('10000' "   ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold17WhiteA700),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: getPadding(right: 10),
              child: const Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
              ),
            )
          ]),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
}
