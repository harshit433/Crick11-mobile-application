import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:pie_chart/pie_chart.dart';

// ignore: must_be_immutable
class AccountSummaryScreen extends StatelessWidget {
  double balance = 6000;
  double winnings = 2000;
  double deposit = 2000;
  double referral = 1000;
  double bonus = 1000;

  AccountSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(getVerticalSize(100)),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: (AdaptiveTheme.of(context).theme ==
                        AdaptiveTheme.of(context).darkTheme)
                    ? Theme.of(context).scaffoldBackgroundColor
                    : Theme.of(context).appBarTheme.backgroundColor,
                centerTitle: true,
                flexibleSpace: Center(
                  child: Padding(
                    padding: getPadding(top: 30, right: 165, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Wallet',
                          style: TextStyle(
                              fontSize: getFontSize(20),
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ),
                elevation: 0,
              ),
            ),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(top: 8.0),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: getPadding(top: 51),
                              child: Container(
                                width: getHorizontalSize(298),
                                height: getVerticalSize(233),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 28, 41, 57),
                                    borderRadius:
                                        BorderRadius.circular(getSize(17))),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: getPadding(top: 60),
                                      child: Text(
                                        "Total Balance ₹ $balance",
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: getFontSize(14),
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 22),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.pink,
                                                size: getSize(9),
                                              ),
                                              Padding(
                                                padding: getPadding(left: 4.0),
                                                child: Text(
                                                  'Winning\nRs $winnings',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: getFontSize(14),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.pink),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: getSize(9),
                                              ),
                                              Padding(
                                                padding: getPadding(left: 4.0),
                                                child: Text(
                                                  'deposit\nRs $deposit',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: getFontSize(14),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.green),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 39),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.lightGreen,
                                                size: getSize(9),
                                              ),
                                              Padding(
                                                padding: getPadding(left: 4.0),
                                                child: Text(
                                                  'referral\nRs $referral',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: getFontSize(14),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.lightGreen),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.orange,
                                                size: getSize(9),
                                              ),
                                              Padding(
                                                padding: getPadding(left: 4.0),
                                                child: Text(
                                                  'bonus\nRs $bonus',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: getFontSize(14),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.orange),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: PieChart(
                                dataMap: {
                                  'winnings': winnings,
                                  'Deposits': deposit,
                                  'Referrals': referral,
                                  'bonus': bonus
                                },
                                chartType: ChartType.ring,
                                ringStrokeWidth: getSize(25),
                                chartRadius: getSize(81),
                                colorList: const [
                                  Colors.pink,
                                  Colors.green,
                                  Colors.lightGreen,
                                  Colors.orange
                                ],
                                centerTextStyle: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(30),
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                                chartValuesOptions: const ChartValuesOptions(
                                    showChartValues: false),
                                legendOptions:
                                    const LegendOptions(showLegends: false),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: 21, left: 47, right: 47),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: getVerticalSize(35),
                              width: getHorizontalSize(143),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.zero),
                                    side: MaterialStatePropertyAll(
                                        BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Add money",
                                      style: TextStyle(
                                          fontFamily: 'inter',
                                          color: Theme.of(context)
                                              .secondaryHeaderColor,
                                          fontSize: getFontSize(16),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: getVerticalSize(35),
                              width: getHorizontalSize(143),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.zero),
                                    side: MaterialStatePropertyAll(
                                        BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Withdraw",
                                      style: TextStyle(
                                          fontFamily: 'inter',
                                          fontSize: getFontSize(16),
                                          color: Theme.of(context)
                                              .secondaryHeaderColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: 15.0, left: 26),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'All Transactions',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'inter',
                                fontSize: getFontSize(16),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ]))));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }

  onTapAddmoney(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teamCreationScreen);
  }

  onTapWithdraw(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teamCreationScreen);
  }
}
