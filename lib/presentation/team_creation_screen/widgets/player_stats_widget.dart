import 'package:crick11/core/app_export.dart';
import 'package:flutter/material.dart';

class PlayerStatsWidget extends StatefulWidget {
  final String name;
  final String player_image;
  final String type;
  final int matches;
  final int runs;
  final int avg;
  final double strike_rate;
  final double credits;
  final String team;
  final bool selected;
  final void Function() ontap;

  final team_colors = {'SRH': Colors.orange, 'RR': Colors.pink};

  PlayerStatsWidget({
    required this.name,
    required this.player_image,
    required this.avg,
    required this.credits,
    required this.matches,
    required this.runs,
    required this.strike_rate,
    required this.team,
    required this.type,
    required this.selected,
    required this.ontap,
  });

  @override
  State<PlayerStatsWidget> createState() => _PlayerStatsWidgetState();
}

class _PlayerStatsWidgetState extends State<PlayerStatsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 20, right: 20, left: 20),
      child: Stack(alignment: Alignment.topRight, children: [
        Container(
          decoration: BoxDecoration(
              color: (Theme.of(context).scaffoldBackgroundColor ==
                      ColorConstant.grey)
                  ? widget.team_colors[widget.team]
                  : Colors.grey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(getSize(24)),
                  bottomLeft: Radius.circular(getSize(24)),
                  bottomRight: Radius.circular(getSize(24)),
                  topRight: Radius.circular(getSize(123)))),
          height: getVerticalSize(182),
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
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(left: 8, top: 22, right: 52),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(widget.name,
                              style: TextStyle(
                                fontFamily: 'Sansation',
                                fontSize: getFontSize(22),
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              )),
                          Text(widget.type,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: getFontSize(14),
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ))
                        ],
                      ),
                      Padding(
                        padding: getPadding(right: 10),
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
                                Text('Runs',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(15),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text('${widget.runs}',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('S/R',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(15),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text('${widget.strike_rate}',
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
                              Text('Credits',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(15),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text('${widget.credits}',
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
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: getPadding(left: 19, bottom: 19),
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(84))),
          width: getHorizontalSize(84),
          height: getVerticalSize(76),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.team_colors[widget.team],
            ),
            child: IconButton(
              icon: !(widget.selected)
                  ? const Icon(Icons.add)
                  : const Icon(Icons.remove),
              color: Colors.white,
              onPressed: widget.ontap,
            ),
          ),
        )
      ]),
    );
  }
}
