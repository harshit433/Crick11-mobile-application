import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:crick11/widgets/custom_icon_button.dart';

class Contest_card extends StatelessWidget {
  Contest_card(
      {required this.prize_money,
      required this.event_name,
      required this.team_1,
      required this.team_1_logo,
      required this.team_2,
      required this.team_2_logo,
      required this.date,
      required this.time,
      required this.bgcolor,
      this.themecolor,
      required this.buttoncolor,
      required this.ontap});

  final String prize_money;
  final String event_name;
  final String team_1;
  final String team_2;
  final String date;
  final String time;
  final String team_1_logo;
  final team_2_logo;
  final Color bgcolor;
  final Color? themecolor;
  final IconButtonVariant buttoncolor;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getVerticalSize(148),
        //width: getHorizontalSize(343),
        margin: getMargin(top: 6),
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: getMargin(right: 8),
                  padding: getPadding(left: 12, top: 8, right: 12, bottom: 8),
                  decoration: BoxDecoration(
                          color: bgcolor,
                          border: Border.all(color: Colors.black, width: 0.5))
                      .copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBR76),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: getPadding(left: 3, top: 7, right: 5),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgTrophy,
                                      height: getVerticalSize(33),
                                      width: getHorizontalSize(29)),
                                  Padding(
                                      padding: getPadding(
                                          left: 4, top: 5, bottom: 7),
                                      child: Text("$prize_money",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Roboto',
                                              fontSize: getFontSize(17),
                                              fontWeight: FontWeight.w800))),
                                  Padding(
                                      padding: getPadding(
                                        left: 109,
                                        top: 7,
                                        bottom: 9,
                                      ),
                                      child: Text(event_name,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Roboto',
                                              fontSize: getFontSize(13),
                                              fontWeight: FontWeight.w900)))
                                ])),
                        Padding(
                          padding: getPadding(top: 18),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: getHorizontalSize(225),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: ColorConstant.redA700),
                                          shape: BoxShape.circle,
                                          color: bgcolor,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                team_1_logo,
                                              ),
                                              fit: BoxFit.fill)),
                                      width: getHorizontalSize(50),
                                      height: getVerticalSize(52),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 2.0),
                                      child: Text(team_1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              color: Colors.black,
                                              fontSize: getFontSize(13),
                                              fontWeight: FontWeight.w800)),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(date,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontSize: getFontSize(13),
                                            fontWeight: FontWeight.w800)),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          size: getSize(22),
                                        ),
                                        Text(time,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Roboto',
                                                fontSize: getFontSize(13),
                                                fontWeight: FontWeight.w800))
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: ColorConstant.redA700),
                                          shape: BoxShape.circle,
                                          color: bgcolor,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                team_2_logo,
                                              ),
                                              fit: BoxFit.fill)),
                                      width: getHorizontalSize(50),
                                      height: getVerticalSize(52),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 2.0),
                                      child: Text(team_2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Roboto',
                                              fontSize: getFontSize(13),
                                              fontWeight: FontWeight.w800)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.all(0),
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder11),
                  child: Container(
                      height: getSize(61),
                      width: getSize(61),
                      padding: getPadding(all: 9),
                      decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor)
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                      child: CustomIconButton(
                          height: 41,
                          width: 42,
                          variant: buttoncolor,
                          alignment: Alignment.center,
                          onTap: ontap,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: getSize(16),
                          )))))
        ]));
  }
}
