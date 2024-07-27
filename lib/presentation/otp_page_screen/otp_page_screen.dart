import 'package:crick11/presentation/otp_page_screen/bloc/otp_page_bloc.dart';
import 'package:crick11/presentation/otp_page_screen/ticker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crick11/core/app_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPageScreen extends StatefulWidget {
  OtpPageScreen({super.key});

  @override
  State<OtpPageScreen> createState() => _OtpPageScreenState();
}

class _OtpPageScreenState extends State<OtpPageScreen> {
  final OtpPageBloc _otpPageBloc = OtpPageBloc(ticker: const Ticker());
  Color? color;
  String? phoneNumber;

  @override
  void initState() {
    super.initState();
    _otpPageBloc.add(const TimerStarted(duration: 10));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    phoneNumber = ModalRoute.of(context)!.settings.arguments as String;
    return BlocConsumer<OtpPageBloc, OtpPageState>(
      bloc: _otpPageBloc,
      listener: (context, state) {
        if (state is TimerRunComplete) {
          Navigator.popAndPushNamed(context, AppRoutes.otpScreen,
              arguments: phoneNumber);
        }
        if (state is NavigateBack) {
          Navigator.pop(context);
        }
        if (state is OTPVerified) {
          Navigator.pushNamedAndRemoveUntil(
              context, AppRoutes.homeScreen, (Route<dynamic> route) => false);
        }
        if (state is IncorrectOTP) {
          color = Colors.red;
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Incorrect Otp entered'),
            behavior: SnackBarBehavior.floating,
          ));
        }
        //if (state is IncorrectOTP) {
        //Navigator.popAndPushNamed(context, AppRoutes.incorrectOtpScreen);
        //}
      },
      builder: (context, state) {
        {
          return SafeArea(
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: SizedBox(
                      height: size.height,
                      width: double.maxFinite,
                      child: Padding(
                          padding: getPadding(left: 20, top: 50, right: 17),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Back button  ====================================================================================
                                Container(
                                    height: 39,
                                    width: 39,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Theme.of(context)
                                                .secondaryHeaderColor),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_back_ios,
                                          size: getSize(15)),
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                      onPressed: () {
                                        _otpPageBloc.add(BackButtonPressed());
                                      },
                                    )),
                                // enter otp title =======================================================================================
                                Padding(
                                    padding: getPadding(top: 52),
                                    child: Text("Enter OTP",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: getFontSize(
                                            30,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ))),
                                // Enter OTP subtitle ================================================================================
                                Container(
                                    margin: getMargin(top: 10, right: 65),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  "We’ve sent an SMS with an activation code to your phone ",
                                              style: TextStyle(
                                                  fontSize: getFontSize(16),
                                                  color: Theme.of(context)
                                                      .secondaryHeaderColor,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: phoneNumber,
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .secondaryHeaderColor,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left)),
                                // OTP textfield ==================================================================================
                                Padding(
                                    padding: getPadding(top: 31),
                                    child: PinCodeTextField(
                                      appContext: context,
                                      length: 5,
                                      obscureText: false,
                                      keyboardType: TextInputType.number,
                                      autoDismissKeyboard: true,
                                      enableActiveFill: true,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      onChanged: (value) {},
                                      textStyle: TextStyle(
                                          color: Theme.of(context)
                                              .secondaryHeaderColor,
                                          fontSize: getFontSize(28),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500),
                                      pinTheme: PinTheme(
                                          fieldHeight: getHorizontalSize(72),
                                          fieldWidth: getHorizontalSize(63),
                                          shape: PinCodeFieldShape.box,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(15)),
                                          selectedFillColor:
                                              ColorConstant.fromHex(
                                                  "#1212121D"),
                                          activeFillColor:
                                              ColorConstant.fromHex(
                                                  "#1212121D"),
                                          inactiveFillColor:
                                              ColorConstant.fromHex(
                                                  "#1212121D"),
                                          inactiveColor: color ??
                                              (Theme.of(context)
                                                  .secondaryHeaderColor),
                                          selectedColor: ColorConstant.blueA200,
                                          activeColor: color ??
                                              (Theme.of(context)
                                                  .secondaryHeaderColor)),
                                      onCompleted: (value) {
                                        _otpPageBloc.add(VerifyOTP(value));
                                      },
                                    )),
                                // Enter code again text =======================================================================
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 149),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("Send code again",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: getFontSize(
                                                          16,
                                                        ),
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, bottom: 1),
                                                  child: Text(
                                                      "${(((state.duration / 60) % 60).floor().toString().padLeft(2, '0'))}:${((state.duration % 60).floor().toString().padLeft(2, '0'))}"))
                                            ])))
                              ])))));
        }
      },
    );
  }
}
