import 'package:crick11/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PointsItemWidget extends StatelessWidget {
  PointsItemWidget();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: getPadding(left: 25, right: 25),
        child: Column(
          children: [
            SizedBox(
              height: getVerticalSize(22),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: getVerticalSize(62),
                    ),
                    Padding(
                      padding: getPadding(bottom: 12.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_drop_up_rounded,
                            color: Colors.green,
                          ),
                          Text(
                            '2',
                            style: TextStyle(
                              fontSize: getFontSize(
                                20,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 20,
                              color: Theme.of(context).tabBarTheme.labelColor
                                  as Color,
                              spreadRadius: 5)
                        ],
                      ),
                      child: CircleAvatar(
                        radius: getSize(46),
                        backgroundColor:
                            Theme.of(context).tabBarTheme.labelColor,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            ImageConstant.imgEllipse198,
                          ),
                          radius: getSize(41),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(top: 21.0),
                      child: Text(
                        '@Sumit_86',
                        style: TextStyle(
                            fontSize: getFontSize(12),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: getPadding(top: 4.0),
                      child: Text(
                        '48',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: getFontSize(14),
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).tabBarTheme.labelColor),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: getPadding(bottom: 12.0),
                          child: Row(
                            children: [
                              Image.asset(
                                ImageConstant.imgArtboard481,
                                height: getVerticalSize(32),
                                width: getHorizontalSize(26),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 20,
                                  color: Theme.of(context)
                                      .tabBarTheme
                                      .labelColor as Color,
                                  spreadRadius: 5)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: getSize(58),
                            backgroundColor:
                                Theme.of(context).tabBarTheme.labelColor,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                ImageConstant.imgEllipse199,
                              ),
                              radius: getSize(53),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: 21.0),
                          child: Text(
                            '@Sumit_86',
                            style: TextStyle(
                                fontSize: getFontSize(12),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: 4.0),
                          child: Text(
                            '48',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: getFontSize(14),
                                fontWeight: FontWeight.w700,
                                color:
                                    Theme.of(context).tabBarTheme.labelColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: getVerticalSize(62),
                        ),
                        Padding(
                          padding: getPadding(bottom: 12.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.arrow_drop_down_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 20,
                                  color: Theme.of(context)
                                      .tabBarTheme
                                      .labelColor as Color,
                                  spreadRadius: 5)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: getSize(46),
                            backgroundColor:
                                Theme.of(context).tabBarTheme.labelColor,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                ImageConstant.imgEllipse200,
                              ),
                              radius: getSize(41),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: 21.0),
                          child: Text(
                            '@Sumit_86',
                            style: TextStyle(
                                fontSize: getFontSize(12),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: 4.0),
                          child: Text(
                            '48',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: getFontSize(14),
                                fontWeight: FontWeight.w700,
                                color:
                                    Theme.of(context).tabBarTheme.labelColor),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: getPadding(top: 32.5),
              child: Expanded(child: Image.asset('assets/images/line34.png')),
            ),
            const ListTile(
              leading: Text('Rank'),
              title: Text('Username'),
              trailing: Text('Points'),
            ),
            Column(
              children: [
                for (int i = 0; i < 6; i++)
                  ListTile(
                    leading: Text('$i'),
                    title: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(ImageConstant.img8gucovcovaofaqf),
                          radius: getSize(18),
                        ),
                        const Text("Amk110")
                      ],
                    ),
                    trailing: const Text('48'),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
