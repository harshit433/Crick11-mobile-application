import 'package:crick11/presentation/login_screen/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selected_country = '91';
  late FocusNode myfocusnode;

  @override
  void initState() {
    super.initState();
    myfocusnode = FocusNode();
  }

  final LoginBloc loginBloc = LoginBloc();

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
        bloc: loginBloc,
        listener: (context, state) {
          if (state is NavigateToOTPPage) {
            Navigator.pushNamed(context, AppRoutes.otpPageScreen,
                arguments: state.phonenumber);
          }
          if (state is NavigateBack) {
            Navigator.pop(context);
          }
          if (state is PhoneVerificationFailed) {
            FocusScope.of(context).unfocus();

            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Invalid Phone Number'),
              behavior: SnackBarBehavior.floating,
            ));
          }
        },
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
                  body: SingleChildScrollView(
            child: Container(
                padding: getPadding(left: 12, top: 50, right: 12, bottom: 50),
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Back Button =================================================================================
                      InkWell(
                        child: Container(
                            height: 39,
                            width: 39,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        Theme.of(context).secondaryHeaderColor),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: getSize(15),
                              color: Theme.of(context).secondaryHeaderColor,
                            )),
                        onTap: () {
                          loginBloc.add(BackButtonClickedEvent());
                        },
                      ),
                      // Log in title ==================================================================================
                      Padding(
                          padding: getPadding(left: 8, top: 47),
                          child: Text("Log in",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Theme.of(context).secondaryHeaderColor,
                                fontSize: getFontSize(
                                  30,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ))),
                      // Log in subtitle ================================================================================
                      Container(
                          margin: getMargin(left: 8, top: 7, right: 42),
                          child: Text(
                              "Get in on the action now and elevate your trading game to the next level!",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Theme.of(context).secondaryHeaderColor,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ))),
                      // Phone number field ==============================================================================
                      Column(children: [
                        Padding(
                          padding: getPadding(left: 13, top: 40),
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 13.0),
                          child: IntlPhoneField(
                            textAlignVertical: TextAlignVertical.center,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                            showDropdownIcon: false,
                            pickerDialogStyle: PickerDialogStyle(
                                countryCodeStyle:
                                    const TextStyle(color: Colors.black),
                                countryNameStyle:
                                    const TextStyle(color: Colors.black),
                                searchFieldCursorColor: Colors.black,
                                searchFieldInputDecoration:
                                    const InputDecoration(
                                        hintText: 'Search a country',
                                        fillColor: Colors.black,
                                        filled: true)),
                            initialCountryCode: 'IN',
                            controller: phoneNumberController,
                            onCountryChanged: (value) {
                              myfocusnode.requestFocus();
                              selected_country = value.dialCode;
                            },
                            focusNode: myfocusnode,
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 13),
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                        )
                      ]),
                      SizedBox(
                        height: getHorizontalSize(90),
                      ),
                      // verify OTP button  ================================================================================
                      Center(
                        child: SizedBox(
                          width: getHorizontalSize(250),
                          child: ElevatedButton(
                            onPressed: () {
                              loginBloc.add(LoginClickedEvent(
                                  phone: phoneNumberController.text,
                                  code: selected_country));
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Theme.of(context)
                                        .bottomNavigationBarTheme
                                        .backgroundColor),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: getPadding(top: 18.0, bottom: 18),
                                  child: const Text(
                                    'Verify OTP',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(right: 8.0),
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ])),
          )));
        });
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapVerifyotp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpPageScreen);
  }
}
