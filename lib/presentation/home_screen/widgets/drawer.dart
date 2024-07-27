import 'package:crick11/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class lightdrawerhead extends StatefulWidget {
  const lightdrawerhead({
    super.key,
    required this.ontap,
  });

  final Function() ontap;
  @override
  State<lightdrawerhead> createState() => _lightdrawerheadState();
}

class _lightdrawerheadState extends State<lightdrawerhead> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(278),
      child: DrawerHeader(
          padding: getPadding(all: 0),
          child: Stack(
            children: [
              Container(
                height: getVerticalSize(211),
                width: getHorizontalSize(325),
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
              ),
              Padding(
                padding: getPadding(top: 54, left: 18),
                child: Container(
                  width: getHorizontalSize(20),
                  height: getVerticalSize(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(getSize(7))),
                  child: GestureDetector(
                    onTap: widget.ontap,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: getSize(15),
                      weight: 4,
                      //size: getSize(15),
                      //weight: 4,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: getPadding(top: 133.0),
                  child: Container(
                    width: getHorizontalSize(273),
                    height: getVerticalSize(106),
                    decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius:
                            BorderRadius.all(Radius.circular(getSize(16)))),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(left: 11.0),
                          child: Image.asset(
                            ImageConstant.imgEllipse196,
                            width: getHorizontalSize(68),
                            height: getVerticalSize(72),
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 19.0, top: 18, bottom: 13),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jatin Dua',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: getFontSize(19),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '+91 123456789',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: getFontSize(13),
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Level : ',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: getFontSize(12),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'Beginner',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: getFontSize(16),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class darkdrawerhead extends StatefulWidget {
  const darkdrawerhead({
    super.key,
    required this.ontap,
  });

  final Function() ontap;
  @override
  State<darkdrawerhead> createState() => _darkdrawerheadState();
}

class _darkdrawerheadState extends State<darkdrawerhead> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(333),
      child: DrawerHeader(
          padding: getPadding(all: 0),
          child: Stack(
            children: [
              Container(
                height: getVerticalSize(333),
                width: getHorizontalSize(325),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 28, 41, 57),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
              ),
              Padding(
                padding: getPadding(top: 54, left: 18),
                child: Container(
                  width: getHorizontalSize(20),
                  height: getVerticalSize(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(getSize(7))),
                  child: GestureDetector(
                    onTap: widget.ontap,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: getSize(15),
                      weight: 4,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 62.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImageConstant.imgEllipse196,
                        width: getHorizontalSize(148),
                        height: getVerticalSize(148),
                      ),
                      Text(
                        'Jatin Dua',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: getFontSize(20),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '+91 123456789',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: getFontSize(13),
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Level : ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Beginner',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: getFontSize(16),
                                  fontWeight: FontWeight.w700),
                            ),
                          ]),
                      SizedBox(
                          width: getHorizontalSize(258),
                          height: getVerticalSize(40),
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text("Edit")))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class drawerWidget extends StatefulWidget {
  const drawerWidget({super.key});

  @override
  State<drawerWidget> createState() => _drawerWidgetState();
}

class _drawerWidgetState extends State<drawerWidget> {
  final HomeBloc _homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    Drawer_Head() {
      if (Theme.of(context).bottomNavigationBarTheme.backgroundColor ==
          ColorConstant.red800) {
        return lightdrawerhead(
          ontap: () {
            Navigator.pop(context);
          },
        );
      } else {
        return darkdrawerhead(
          ontap: () {
            Navigator.pop(context);
          },
        );
      }
    }

    return BlocConsumer<HomeBloc, HomeState>(
      bloc: _homeBloc,
      listener: (context, state) {
        if (state is NavigateToKYC) {
          Navigator.pushNamed(context, AppRoutes.continueKycScreen);
        }
        if (state is NavigateToWallet) {
          Navigator.pushNamed(context, AppRoutes.accountSummaryScreen);
        }
      },
      builder: (context, state) {
        return Drawer(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          width: getHorizontalSize(325),
          child: ListView(
            children: [
              Drawer_Head(),
              Container(
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.white, width: 0.5))),
                child: ListTile(
                  leading: Icon(
                    Icons.verified_user,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  title: Text(
                    "KYC",
                    style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Inter",
                        fontSize: getFontSize(14)),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: getSize(14),
                  ),
                  onTap: () {
                    _homeBloc.add(KYCNavigation());
                  },
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.white, width: 0.5))),
                child: ListTile(
                  leading: Icon(
                    Icons.wallet,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  title: Text(
                    "Wallet",
                    style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Inter",
                        fontSize: getFontSize(14)),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: getSize(14),
                  ),
                  onTap: () {
                    _homeBloc.add(WalletNavigation());
                  },
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.white, width: 0.5))),
                child: ListTile(
                  leading: Icon(
                    Icons.contact_phone,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  title: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Inter",
                        fontSize: getFontSize(14)),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: getSize(14),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.white, width: 0.5))),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Inter",
                        fontSize: getFontSize(14)),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: getSize(14),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
