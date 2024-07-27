import 'package:crick11/core/app_export.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class darkappbar extends StatelessWidget {
  const darkappbar({
    super.key,
    required this.tap_leading,
    required this.tap_trailing,
  });

  final void Function() tap_leading;
  final void Function() tap_trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Padding(
        padding: getPadding(left: 17, right: 17, top: 35, bottom: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: tap_leading,
              child: SvgPicture.asset(
                ImageConstant.imgPlusWhiteA700,
              ),
            ),
            Expanded(
              child: Image.asset(
                ImageConstant.imgFanasy1removebgpreview153x231,
                alignment: Alignment.topCenter,
                height: getVerticalSize(55),
              ),
            ),
            GestureDetector(
              onTap: tap_trailing,
              child: Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
                size: getSize(30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class lightappbar extends StatelessWidget {
  const lightappbar({
    super.key,
    required this.tap_leading,
    required this.tap_trailing,
  });

  final void Function() tap_leading;
  final void Function() tap_trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Padding(
        padding: getPadding(top: 45, left: 17, bottom: 30, right: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: tap_leading,
              child: SvgPicture.asset(
                ImageConstant.imgPlusWhiteA700,
              ),
            ),
            GestureDetector(
              onTap: tap_trailing,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Padding(
                  padding: getPadding(right: 10.0),
                  child: DottedBorder(
                      strokeWidth: 2,
                      dashPattern: const [6, 6],
                      radius: const Radius.circular(5),
                      color: Colors.white,
                      borderType: BorderType.RRect,
                      child: Padding(
                        padding: getPadding(
                          left: 5.0,
                          right: 5,
                          top: 4,
                        ),
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
                const Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
