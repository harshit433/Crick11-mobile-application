import 'package:crick11/presentation/opening_screen/bloc/opening_bloc.dart';
import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OpeningScreen extends StatelessWidget {
  final OpeningBloc openingBloc = OpeningBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OpeningBloc, OpeningState>(
      bloc: openingBloc,
      listener: (context, state) {
        if (state is OpeningInitial) {
          Navigator.pushNamed(context, AppRoutes.loginScreen);
        }
      },
      builder: (context, state) {
        return Container(
          color: ColorConstant.black900,
          child: SafeArea(
            child: Scaffold(
              body: SizedBox(
                height: size.height,
                width: getHorizontalSize(392),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    // Background Image =================================================================

                    Image.asset(
                      ImageConstant.imgWallpaper,
                      alignment: Alignment.topCenter,
                    ),
                    // Main Content  ========================================================================
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(26)),
                        height: getVerticalSize(
                          300,
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 7,
                              top: 26,
                              right: 7,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Welcome to Crick11  =====================================================================
                                Text(
                                  "Welcome to Crick11",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: getFontSize(32),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700),
                                ),
                                Padding(
                                  padding:
                                      getPadding(top: 8, left: 5, right: 5),
                                  child: Text(
                                    "Dominate the game. Join the ultimate fantasy sports platform for epic wins and intense competition",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: getFontSize(17),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                // Mobile number login button  =============================================================================
                                Padding(
                                  padding: getPadding(top: 16.0),
                                  child: SizedBox(
                                    width: getHorizontalSize(245),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        openingBloc.add(LoginButtonClicked());
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .secondaryHeaderColor),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30))),
                                      ),
                                      child: Padding(
                                        padding:
                                            getPadding(bottom: 8.0, top: 8),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  shape: BoxShape.circle),
                                              child: Padding(
                                                padding: getPadding(all: 8.0),
                                                child: Icon(
                                                  Icons.call_outlined,
                                                  color: Theme.of(context)
                                                      .secondaryHeaderColor,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text('Mobile Number',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontSize: getFontSize(
                                                      19,
                                                    ),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                  ),
                                  // Don't have an account Sign Up   ========================================================================
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Don’t have an account? ",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .secondaryHeaderColor,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "SignUp",
                                          style: TextStyle(
                                            color: ColorConstant.greenA700,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  onTapMobilebutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}