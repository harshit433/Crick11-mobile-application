import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:crick11/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class PaymentsOptionsScreen extends StatelessWidget {
  const PaymentsOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.gray900,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(getVerticalSize(80)),
        child: AppBar(
          backgroundColor: ColorConstant.gray900,
          elevation: 0,
          leading: Padding(
            padding: getPadding(top: 32.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back)),
          ),
          title: Padding(
            padding: getPadding(top: 32),
            child: Text(
              'Payment Options',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: getFontSize(23),
                  fontWeight: FontWeight.w700),
            ),
          ),
          centerTitle: true,
        ),
      ),
      //backgroundColor: ColorConstant.gray900,
      body: SingleChildScrollView(
        child: Padding(
          padding: getPadding(top: 29, left: 27, right: 27),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Amount to Pay",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: getFontSize(12),
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        '₹1000',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: getFontSize(12),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Cashback",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: getFontSize(12),
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        '₹0',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: getFontSize(12),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "To be credited",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: getFontSize(12),
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        '₹1000',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: getFontSize(12),
                            fontWeight: FontWeight.w500,
                            color: Colors.green),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: getPadding(top: 37.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Pay with UPI Apps",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: getFontSize(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: getPadding(top: 10),
                  child: SizedBox(
                    width: getHorizontalSize(332),
                    height: getVerticalSize(170),
                    child: OutlineGradientButton(
                      padding: EdgeInsets.all(getHorizontalSize(1)),
                      strokeWidth: getHorizontalSize(1),
                      gradient: LinearGradient(
                          begin: const Alignment(0.5, 0),
                          end: const Alignment(1, 1),
                          colors: [
                            ColorConstant.blueA200,
                            ColorConstant.blueA20000
                          ]),
                      corners: const Corners(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Container(
                          padding: getPadding(all: 13),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                            children: [
                              Padding(
                                padding: getPadding(top: 4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getSize(10)),
                                            color: Colors.white,
                                          ),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgGooglelogo,
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(38),
                                              alignment: Alignment.center),
                                        ),
                                        Padding(
                                          padding: getPadding(top: 6.0),
                                          child: Text(
                                            'G PAY',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Inter',
                                                fontSize: getFontSize(12),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getSize(10)),
                                            color: Colors.white,
                                          ),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgPaytmlogo,
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(38),
                                              alignment: Alignment.center),
                                        ),
                                        Padding(
                                          padding: getPadding(top: 6.0),
                                          child: Text(
                                            'PAYTM',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Inter',
                                                fontSize: getFontSize(12),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getSize(10)),
                                              color: Colors.white,
                                            ),
                                            child: CustomIconButton(
                                                height: 38,
                                                width: 38,
                                                variant: IconButtonVariant
                                                    .FillPurple800,
                                                shape: IconButtonShape
                                                    .RoundedBorder14,
                                                padding: IconButtonPadding
                                                    .PaddingAll2,
                                                alignment: Alignment.topLeft,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgVolumeWhiteA700))),
                                        Padding(
                                          padding: getPadding(top: 6.0),
                                          child: Text(
                                            'PHONEPE',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                color: Colors.white,
                                                fontSize: getFontSize(12),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getSize(10)),
                                              color: Colors.white,
                                            ),
                                            child: CustomImageView(
                                                height: getVerticalSize(38),
                                                width: getHorizontalSize(38),
                                                svgPath:
                                                    ImageConstant.imgAlarm)),
                                        Padding(
                                          padding: getPadding(top: 6.0),
                                          child: Text(
                                            'iMobile\nPay',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Inter',
                                                fontSize: getFontSize(12),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getSize(10)),
                                              color: Colors.white,
                                            ),
                                            child: Container(
                                                height: getSize(38),
                                                width: getSize(38),
                                                padding: getPadding(
                                                    left: 2,
                                                    top: 9,
                                                    right: 2,
                                                    bottom: 9),
                                                decoration: AppDecoration
                                                    .outlineBlack9003f5
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder8),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgTicketGray600,
                                                          height:
                                                              getVerticalSize(
                                                                  17),
                                                          width:
                                                              getHorizontalSize(
                                                                  33),
                                                          alignment: Alignment
                                                              .topCenter),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Text(
                                                              "All apps",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium4))
                                                    ]))),
                                        Padding(
                                          padding: getPadding(top: 6.0),
                                          child: Text(
                                            'View All',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                color: Colors.white,
                                                fontSize: getFontSize(12),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(top: 19),
                                child: Container(
                                  height: getVerticalSize(1),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: const Alignment(0.5, 0),
                                        end: const Alignment(1, 1),
                                        colors: [
                                          ColorConstant.blueA200,
                                          ColorConstant.blueA20000
                                        ]),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(top: 21),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '+    Add new UPI ID',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: getFontSize(14),
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  )),
              Padding(
                padding: getPadding(top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: getFontSize(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: getPadding(top: 10),
                  child: SizedBox(
                    width: getHorizontalSize(332),
                    height: getVerticalSize(120),
                    child: OutlineGradientButton(
                      padding: EdgeInsets.all(getHorizontalSize(1)),
                      strokeWidth: getHorizontalSize(1),
                      gradient: LinearGradient(
                          begin: const Alignment(0.5, 0),
                          end: const Alignment(1, 1),
                          colors: [
                            ColorConstant.blueA200,
                            ColorConstant.blueA20000
                          ]),
                      corners: const Corners(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Container(
                          padding: getPadding(
                              left: 15, top: 7, bottom: 7, right: 15),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: getPadding(top: 4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgPaytmlogo,
                                          height: getVerticalSize(31),
                                          width: getHorizontalSize(31),
                                          alignment: Alignment.center),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            getPadding(left: 10, right: 15),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'PAYTM',
                                                style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: getFontSize(10),
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                'Rs 50-500 cashback on min txn of Rs 1500 via Paytm Wallet. Valid once per user',
                                                style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: getFontSize(9),
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(top: 10, bottom: 10),
                                child: Container(
                                  height: getVerticalSize(1),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: const Alignment(0.5, 0),
                                        end: const Alignment(1, 1),
                                        colors: [
                                          ColorConstant.blueA200,
                                          ColorConstant.blueA20000
                                        ]),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Image.asset(
                                        'assets/images/mobikwik.png',
                                        width: getHorizontalSize(31),
                                        height: getVerticalSize(31),
                                      )),
                                  Expanded(
                                    child: Padding(
                                      padding: getPadding(left: 10, right: 15),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Mobikwik',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Inter',
                                                  fontSize: getFontSize(10),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              'Rs 50-500 cashback on min txn of Rs 1500 via Paytm Wallet. Valid once per user',
                                              style: TextStyle(
                                                  fontFamily: 'Inter',
                                                  fontSize: getFontSize(9),
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          )),
                    ),
                  )),
              Padding(
                padding: getPadding(top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Credit/Debit Card',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: getFontSize(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: getPadding(top: 10),
                  child: SizedBox(
                    width: getHorizontalSize(332),
                    height: getVerticalSize(50),
                    child: OutlineGradientButton(
                      padding: EdgeInsets.all(getHorizontalSize(1)),
                      strokeWidth: getHorizontalSize(1),
                      gradient: LinearGradient(
                          begin: const Alignment(0.5, 0),
                          end: const Alignment(1, 1),
                          colors: [
                            ColorConstant.blueA200,
                            ColorConstant.blueA20000
                          ]),
                      corners: const Corners(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Container(
                          padding: getPadding(
                              left: 15, top: 7, bottom: 7, right: 15),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: getSize(16),
                                backgroundColor: Colors.white,
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgMaterialsymbolscreditcardoutline),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(left: 10),
                                  child: Text(
                                    'Pay via cards',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: getFontSize(10),
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )
                            ],
                          )),
                    ),
                  )),
              Padding(
                padding: getPadding(top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'NetBanking',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: getFontSize(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: getPadding(top: 10),
                  child: SizedBox(
                    width: getHorizontalSize(332),
                    height: getVerticalSize(50),
                    child: OutlineGradientButton(
                      padding: EdgeInsets.all(getHorizontalSize(1)),
                      strokeWidth: getHorizontalSize(1),
                      gradient: LinearGradient(
                          begin: const Alignment(0.5, 0),
                          end: const Alignment(1, 1),
                          colors: [
                            ColorConstant.blueA200,
                            ColorConstant.blueA20000
                          ]),
                      corners: const Corners(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Container(
                          padding: getPadding(
                              left: 15, top: 7, bottom: 7, right: 15),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: getSize(16),
                                backgroundColor: Colors.white,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgPhbank),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(left: 10),
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: getFontSize(10),
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )
                            ],
                          )),
                    ),
                  )),
              Padding(
                padding: getPadding(top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Food Card',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: getFontSize(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: getPadding(top: 10),
                  child: SizedBox(
                    width: getHorizontalSize(332),
                    height: getVerticalSize(54),
                    child: OutlineGradientButton(
                      padding: EdgeInsets.all(getHorizontalSize(1)),
                      strokeWidth: getHorizontalSize(1),
                      gradient: LinearGradient(
                          begin: const Alignment(0.5, 0),
                          end: const Alignment(1, 1),
                          colors: [
                            ColorConstant.blueA200,
                            ColorConstant.blueA20000
                          ]),
                      corners: const Corners(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Container(
                          padding: getPadding(
                              left: 15, top: 7, bottom: 7, right: 15),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Padding(
                            padding: getPadding(top: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: getSize(16),
                                  backgroundColor: Colors.white,
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgMaterialsymbolscreditcardoutline),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(left: 10),
                                    child: Text(
                                      'Save and pay via food card (Sodexo)',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: getFontSize(10),
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )),
                    ),
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: getPadding(left: 28.0, right: 28, top: 28, bottom: 25),
        child: SizedBox(
          height: getVerticalSize(40),
          child:
              ElevatedButton(onPressed: () {}, child: const Text('Continue')),
        ),
      ),
    ));
  }
}
