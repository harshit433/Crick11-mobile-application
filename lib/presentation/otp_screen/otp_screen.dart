import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crick11/core/app_export.dart';
import 'package:crick11/widgets/custom_button.dart';
import 'package:crick11/widgets/custom_icon_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'bloc/otp_bloc.dart';

class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final OtpBloc _otpBloc = OtpBloc();

  String code = '00000';

  Color? color;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpBloc, OtpState>(
      bloc: _otpBloc,
      listener: (context, state) {
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
      },
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: Container(
                    height: size.height,
                    color: ColorConstant.gray900,
                    width: double.maxFinite,
                    child: Padding(
                        padding: getPadding(left: 20, top: 50, right: 17),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // back button ==========================================================================================
                              CustomIconButton(
                                  height: 39,
                                  width: 39,
                                  padding: IconButtonPadding.PaddingAll12,
                                  onTap: () {
                                    _otpBloc.add(BackButtonPressed());
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                    size: 12,
                                  )),
                              // enter otp title  =======================================================================================
                              Padding(
                                  padding: getPadding(top: 52),
                                  child: Text("Enter OTP",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold30)),
                              // enter otp subtitle  =======================================================================================
                              Container(
                                  margin: getMargin(top: 10, right: 65),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "We’ve sent an SMS with an activation code to your phone ",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.whiteA700B2,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: ModalRoute.of(context)!
                                                .settings
                                                .arguments as String,
                                            style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.left)),
                              // enter otp textfield  =======================================================================================
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: PinCodeTextField(
                                      appContext: context,
                                      length: 5,
                                      obscureText: false,
                                      obscuringCharacter: '*',
                                      keyboardType: TextInputType.number,
                                      autoDismissKeyboard: true,
                                      enableActiveFill: true,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      onChanged: (value) {},
                                      onCompleted: (value) {
                                        code = value;
                                      },
                                      textStyle: TextStyle(
                                          color: ColorConstant.whiteA700,
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
                                          inactiveColor:
                                              color ?? ColorConstant.whiteA700,
                                          selectedColor: ColorConstant.blueA200,
                                          activeColor: color ??
                                              ColorConstant.whiteA700))),
                              // didn't recieve code message  ================================================================================
                              Padding(
                                  padding: getPadding(top: 83),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("I didn’t receive a code",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular16WhiteA700b2),
                                        Padding(
                                            padding: getPadding(left: 12),
                                            child: Text("Resend",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold16WhiteA700))
                                      ])),
                              // verify OTP button  ==========================================================================================
                              CustomButton(
                                  height: getVerticalSize(56),
                                  text: "Verify",
                                  margin: getMargin(top: 27),
                                  shape: ButtonShape.RoundedBorder10,
                                  padding: ButtonPadding.PaddingAll18,
                                  fontStyle: ButtonFontStyle.InterSemiBold16,
                                  onTap: () {
                                    _otpBloc.add(VerifyOTP(code));
                                  })
                            ])))));
      },
    );
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
