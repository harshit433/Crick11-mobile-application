import 'package:crick11/core/app_export.dart';
import 'package:flutter/material.dart';

class PlayerItemWidget extends StatefulWidget {
  final String name;
  final String player_image;
  final String type;
  final int matches;
  final int avg;
  final String team;
  final bool is_captain;
  final void Function() ontap_c;
  final void Function() ontap_vc;

  final team_colors = {'SRH': Colors.orange, 'RR': Colors.pink};

  PlayerItemWidget({
    required this.name,
    required this.player_image,
    required this.avg,
    required this.matches,
    required this.team,
    required this.type,
    required this.is_captain,
    required this.ontap_c,
    required this.ontap_vc,
  });

  @override
  State<PlayerItemWidget> createState() => _PlayerStatsWidgetState();
}

class _PlayerStatsWidgetState extends State<PlayerItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 20),
      child: Container(
        decoration: BoxDecoration(
            color: (Theme.of(context).scaffoldBackgroundColor ==
                    ColorConstant.grey)
                ? widget.team_colors[widget.team]
                : Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(getSize(24)))),
        height: getVerticalSize(142),
        width: getHorizontalSize(355),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: getVerticalSize(150),
                  width: getHorizontalSize(100),
                  decoration: const BoxDecoration(
                      //color: Colors.white.withOpacity(0.1),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 25,
                            color: Color.fromARGB(255, 197, 196, 196))
                      ]),
                ),
                Image.asset(
                  widget.player_image,
                  height: getVerticalSize(150),
                  width: getHorizontalSize(100),
                  //  fit: BoxFit.fitHeight,
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: getPadding(left: 8, top: 14, right: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.name,
                                style: TextStyle(
                                  fontFamily: 'Sansation',
                                  fontSize: getFontSize(19),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                )),
                            Text(widget.type,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: getFontSize(13),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: widget.ontap_c,
                              child: Container(
                                decoration: (widget.is_captain)
                                    ? (const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle))
                                    : (BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2))),
                                width: getHorizontalSize(41),
                                height: getVerticalSize(41),
                                child: Center(
                                    child: Text(
                                  'C',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: getFontSize(19),
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                            GestureDetector(
                              onTap: widget.ontap_vc,
                              child: Container(
                                decoration: !(widget.is_captain)
                                    ? (const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle))
                                    : (BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2))),
                                width: getHorizontalSize(41),
                                height: getVerticalSize(41),
                                child: Center(
                                    child: Text(
                                  'VC',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: getFontSize(19),
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(right: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Matches',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(15),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text('${widget.matches}',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(17),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Team',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(15),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text(widget.team,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(17),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Avg',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(15),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text('${widget.avg}',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(17),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
