import 'package:crick11/presentation/payment_screen/widgets/recharge_and_wallet.dart';
import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:crick11/widgets/app_bar/appbar_image.dart';
import 'package:crick11/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:crick11/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/payment_bloc.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final PaymentBloc _paymentBloc = PaymentBloc();

  Map<int, String> selected = {0: '1000', 1: '3000', 2: '5000'};

  @override
  Widget build(BuildContext context) {
    TextEditingController priceController = TextEditingController();
    return BlocConsumer<PaymentBloc, PaymentState>(
      bloc: _paymentBloc,
      listener: (context, state) {
        if (state is NavigateToBack) {
          Navigator.pop(context);
        }
        if (state is ContinueToNext) {
          Navigator.pushNamed(context, AppRoutes.paymentsOptionsScreen);
        }
      },
      builder: (context, state) {
        priceController.text = selected[state.amount] as String;
        return SafeArea(
            child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(
              height: getVerticalSize(78),
              leadingWidth: 42,
              leading: AppbarImage(
                  height: getSize(15),
                  width: getSize(15),
                  svgPath: ImageConstant.imgArrowleftGray50,
                  margin: getMargin(left: 27, top: 18, bottom: 22),
                  onTap: () {
                    onTapArrowleft1(context);
                  }),
              title: AppbarSubtitle3(
                  text: "Add Money", margin: getMargin(left: 17))),
          body: SingleChildScrollView(
            child: Container(
                width: getHorizontalSize(384),
                padding: getPadding(left: 23, top: 18, right: 23, bottom: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.img31905393nuragh,
                          height: getVerticalSize(235),
                          width: getHorizontalSize(330),
                          radius: BorderRadius.circular(getHorizontalSize(20)),
                          margin: getMargin(left: 4)),
                      Padding(
                          padding: getPadding(left: 4, top: 21),
                          child: Text("Recharge Wallet",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ))),
                      Padding(
                        padding: getPadding(top: 15.0),
                        child: SizedBox(
                          height: getVerticalSize(23),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: priceController,
                            onFieldSubmitted: (value) {
                              priceController.text = value;
                            },
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .secondaryHeaderColor))),
                          ),
                        ),
                      ),
                      Padding(
                          padding: getPadding(left: 10, top: 19),
                          child: Row(children: [
                            recharge_and_walletButtons(
                              selected: state.amount,
                              item: [
                                Button(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(55),
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    title: "₹ 1000",
                                    tap: () {
                                      _paymentBloc.add(Couponbutton(
                                          selected_coupon: state.coupon,
                                          selected_amount: 0));
                                    }),
                                Button(
                                  height: getVerticalSize(24),
                                  width: getHorizontalSize(55),
                                  color: Theme.of(context).secondaryHeaderColor,
                                  title: "₹ 3000",
                                  tap: () {
                                    _paymentBloc.add(Couponbutton(
                                        selected_coupon: state.coupon,
                                        selected_amount: 1));
                                  },
                                ),
                                Button(
                                  height: getVerticalSize(24),
                                  width: getHorizontalSize(55),
                                  color: Theme.of(context).secondaryHeaderColor,
                                  title: "₹ 5000",
                                  tap: () {
                                    _paymentBloc.add(Couponbutton(
                                        selected_coupon: state.coupon,
                                        selected_amount: 2));
                                  },
                                ),
                              ],
                            ),
                          ])),
                      Padding(
                          padding: getPadding(left: 4, top: 40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Available Coupons",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                    )),
                                Container(
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(78),
                                    margin: getMargin(top: 5, bottom: 4),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text("Have a promo code?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular8
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))))
                              ])),
                      Padding(
                        padding: getPadding(left: 4.0),
                        child: couponButtons(item: [
                          Coupon_Button(
                            color: Theme.of(context).secondaryHeaderColor,
                            title: '₹ 2000 Offer (AutoPay)',
                            subtitle: 'Cashback ₹ 100',
                            height: getVerticalSize(51),
                            width: getHorizontalSize(328),
                            tap: () {
                              _paymentBloc.add(Couponbutton(
                                  selected_coupon: 0,
                                  selected_amount: state.amount));
                            },
                          ),
                          Coupon_Button(
                            color: Theme.of(context).secondaryHeaderColor,
                            title: '₹ 2000 Offer (AutoPay)',
                            subtitle: 'Cashback ₹ 100',
                            height: getVerticalSize(51),
                            width: getHorizontalSize(328),
                            tap: () {
                              _paymentBloc.add(Couponbutton(
                                  selected_coupon: 1,
                                  selected_amount: state.amount));
                            },
                          ),
                          Coupon_Button(
                            color: Theme.of(context).secondaryHeaderColor,
                            title: '₹ 2000 Offer (AutoPay)',
                            subtitle: 'Cashback ₹ 100',
                            height: getVerticalSize(51),
                            width: getHorizontalSize(328),
                            tap: () {
                              _paymentBloc.add(Couponbutton(
                                  selected_coupon: 2,
                                  selected_amount: state.amount));
                            },
                          )
                        ], selected: state.coupon),
                      ),
                    ])),
          ),
          bottomNavigationBar: Padding(
            padding: getPadding(left: 28.0, right: 28, top: 28, bottom: 25),
            child: SizedBox(
              height: getVerticalSize(40),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AppRoutes.paymentsOptionsScreen);
                  },
                  child: const Text('Continue')),
            ),
          ),
        ));
      },
    );
  }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentsOptionsScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
