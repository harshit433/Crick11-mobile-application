import 'package:crick11/core/app_export.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';

class ContinueKycScreen extends StatefulWidget {
  const ContinueKycScreen({super.key});

  @override
  State<ContinueKycScreen> createState() => _ContinueKycScreenState();
}

class _ContinueKycScreenState extends State<ContinueKycScreen> {
  color() {
    if (Theme.of(context).primaryColor == Colors.white) {
      return Colors.black;
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    var activeStep = 2;
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(getVerticalSize(100)),
        child: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Padding(
            padding: getPadding(top: 30),
            child: Text(
              'Continue KYC',
              style: TextStyle(
                  fontSize: getFontSize(20),
                  fontFamily: 'Inter',
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.w800),
            ),
          ),
          leading: Padding(
            padding: getPadding(top: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ),
          elevation: 0,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: getPadding(left: 40, right: 40, top: 20),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Verify Aadhaar',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: getFontSize(18),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            'Verify PAN',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Take a selfie',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Signature',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Link Bank Account',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: getFontSize(18),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    EasyStepper(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsetsDirectional.all(0),
                      direction: Axis.vertical,
                      activeStep: activeStep,
                      lineLength: getVerticalSize(53),
                      lineSpace: 0,
                      lineType: LineType.normal,
                      defaultLineColor: Colors.grey,
                      finishedLineColor: Colors.green,
                      finishedStepIconColor:
                          Theme.of(context).secondaryHeaderColor,
                      finishedStepBackgroundColor: Colors.green,
                      activeStepBackgroundColor: color(),
                      activeStepIconColor: Colors.white,
                      unreachedStepIconColor: Colors.white,
                      unreachedStepBackgroundColor: color(),
                      internalPadding: 0,
                      showLoadingAnimation: false,
                      stepRadius: getSize(18),
                      showStepBorder: false,
                      showTitle: false,
                      steps: const [
                        EasyStep(
                          icon: Icon(Icons.check),
                        ),
                        EasyStep(
                          icon: Icon(Icons.check),
                        ),
                        EasyStep(
                          icon: Icon(Icons.check),
                        ),
                        EasyStep(
                          icon: Icon(Icons.check),
                        ),
                        EasyStep(
                          icon: Icon(Icons.check),
                        ),
                      ],
                      onStepReached: (index) =>
                          setState(() => activeStep = index),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(left: 28.0, right: 28, top: 53),
              child: SizedBox(
                height: getVerticalSize(40),
                width: getHorizontalSize(328),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: getFontSize(16),
                          fontWeight: FontWeight.w900),
                    )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
