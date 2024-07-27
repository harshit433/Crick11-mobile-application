import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'bloc/contest_details_bloc.dart';

class ContestsDetailsScreen extends StatefulWidget {
  const ContestsDetailsScreen({super.key});

  @override
  State<ContestsDetailsScreen> createState() => _ContestsDetailsScreenState();
}

class _ContestsDetailsScreenState extends State<ContestsDetailsScreen> {
  final ContestDetailsBloc _contestsDetailsBloc = ContestDetailsBloc();

  @override
  Widget build(BuildContext context) {
    String contest_type = "Mega";
    var entry_price = 50876;
    String prize_pool = '5 Lakhs';
    var spots_left = 123;
    var total_spots = 1234;
    String first_prize = '2 Lakhs';
    var percentage = 100;
    String number_of_teams = '10 teams';
    return BlocConsumer<ContestDetailsBloc, ContestDetailsState>(
      bloc: _contestsDetailsBloc,
      listener: (context, state) {
        if (state is NavigateToBack) {
          Navigator.pop(context);
        }
        if (state is JoinandCreateTeam) {
          Navigator.popAndPushNamed(context, AppRoutes.teamCreationScreen);
        }
      },
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(getVerticalSize(120)),
                  child: AppBar(
                    centerTitle: true,
                    elevation: 0,
                    title: Padding(
                      padding: getPadding(top: 30),
                      child: Text(
                        'Contest Details',
                        style: TextStyle(
                            fontSize: getFontSize(20),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    leading: GestureDetector(
                      onTap: () {
                        _contestsDetailsBloc.add(BackNavigaton());
                      },
                      child: Padding(
                        padding: getPadding(top: 30.0),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ),
                body: Stack(alignment: Alignment.bottomCenter, children: [
                  Column(
                    children: [
                      Padding(
                        padding: getPadding(top: 20),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getSize(9)),
                                gradient: const LinearGradient(
                                    colors: [Colors.pink, Colors.deepOrange],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    stops: [0.4, 0.6])),
                            height: getVerticalSize(70),
                            width: getHorizontalSize(350),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                        ImageConstant.img5af960119555459),
                                    Text("RR",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray90002,
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'Sansation',
                                          fontWeight: FontWeight.w700,
                                        ))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("SRH",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray90002,
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'Sansation',
                                          fontWeight: FontWeight.w700,
                                        )),
                                    Image.asset(
                                        ImageConstant.imgSunrisershyderabad),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: getPadding(top: 9),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: getPadding(left: 15, right: 15, top: 9),
                              child: Container(
                                height: getVerticalSize(600),
                                decoration: AppDecoration.fillLime100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder17,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Column(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Image.asset(ImageConstant.img31905393nuragh),
                                        // Image.asset(ImageConstant.img14521),
                                        Padding(
                                          padding: getPadding(
                                              top: 9.0, left: 9, right: 45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    ImageConstant.imgMega,
                                                    height: getVerticalSize(38),
                                                    width:
                                                        getHorizontalSize(47),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        getPadding(left: 9.0),
                                                    child: Text(
                                                      contest_type,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray90002,
                                                        fontSize: getFontSize(
                                                          18,
                                                        ),
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  SvgPicture.asset(ImageConstant
                                                      .imgTicketBlack900),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.currency_rupee,
                                                        size: getSize(20),
                                                      ),
                                                      Text('$entry_price',
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray90002,
                                                            fontSize:
                                                                getFontSize(
                                                              21,
                                                            ),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              getPadding(top: 5.0, left: 17),
                                          child: Row(
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgTrophy,
                                                  height: getVerticalSize(33),
                                                  width: getHorizontalSize(29)),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .currency_rupee_outlined,
                                                    size: getSize(18),
                                                  ),
                                                  Text(prize_pool,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray90002,
                                                        fontSize: getFontSize(
                                                          21,
                                                        ),
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                              left: 19.0, top: 8, right: 31),
                                          child: SizedBox(
                                              //height: getVerticalSize(8),
                                              width: getHorizontalSize(301),
                                              child: LinearPercentIndicator(
                                                percent:
                                                    spots_left / total_spots,
                                                lineHeight: getVerticalSize(8),
                                                progressColor: Colors.red,
                                                barRadius:
                                                    const Radius.circular(8),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 0),
                                              )),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                              left: 21.0, top: 5, right: 31),
                                          child: SizedBox(
                                            width: getHorizontalSize(301),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '$spots_left left',
                                                  style: TextStyle(
                                                    color: ColorConstant.red800,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                Text(
                                                  "$total_spots spots",
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(top: 3.5),
                                          child: Container(
                                            height: getVerticalSize(30),
                                            padding:
                                                getPadding(right: 21, left: 3),
                                            decoration: const BoxDecoration(
                                              color: Colors.amber,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(ImageConstant
                                                        .imgMega28x21),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .currency_rupee_outlined,
                                                          size: getSize(16),
                                                        ),
                                                        Text(first_prize,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray90002,
                                                              fontSize:
                                                                  getFontSize(
                                                                16,
                                                              ),
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            )),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      ImageConstant
                                                          .imgArtboard481,
                                                      height: getVerticalSize(
                                                          20.62),
                                                      width:
                                                          getHorizontalSize(20),
                                                    ),
                                                    Text('$percentage %',
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray90002,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        )),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      ImageConstant
                                                          .imgIconsaxlinearpeople,
                                                      height:
                                                          getVerticalSize(20),
                                                      width:
                                                          getHorizontalSize(20),
                                                    ),
                                                    Text(number_of_teams,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray90002,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        )),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                              top: 20, left: 20, right: 20),
                                          child: Column(children: [
                                            Padding(
                                              padding: getPadding(bottom: 15.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Rank',
                                                    style: TextStyle(
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black,
                                                        fontFamily: 'Inter'),
                                                  ),
                                                  Text(
                                                    'Winnings',
                                                    style: TextStyle(
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black,
                                                        fontFamily: 'Inter'),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(bottom: 15.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '#1',
                                                    style: TextStyle(
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black,
                                                        fontFamily: 'Inter'),
                                                  ),
                                                  Text(
                                                    '₹ 2 lakhs',
                                                    style: TextStyle(
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black,
                                                        fontFamily: 'Inter'),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ]),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: getPadding(bottom: 13),
                    child: Container(
                      height: getVerticalSize(41),
                      width: getHorizontalSize(240),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getSize(170))),
                      child: ElevatedButton(
                          onPressed: () {
                            _contestsDetailsBloc.add(JoinNow());
                          },
                          child: Text(
                            'Join Now',
                            style: TextStyle(
                                fontFamily: 'Sansation',
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          )),
                    ),
                  )
                ])));
      },
    );
  }
}
