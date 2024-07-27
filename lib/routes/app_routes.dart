import 'package:crick11/presentation/contests_page/contests_page.dart';
import 'package:crick11/presentation/home_screen/home_screen.dart';
import 'package:crick11/presentation/points_page/points_page.dart';
import 'package:flutter/material.dart';
import 'package:crick11/presentation/contests_details_screen/contests_details_screen.dart';
import 'package:crick11/presentation/otp_screen/otp_screen.dart';
import 'package:crick11/presentation/referral_screen/referral_screen.dart';
import 'package:crick11/presentation/payment_screen/payment_screen.dart';
import 'package:crick11/presentation/continue_kyc_screen/continue_kyc_screen.dart';
import 'package:crick11/presentation/account_summary_screen/account_summary_screen.dart';
import 'package:crick11/presentation/social_screen/social_screen.dart';
import 'package:crick11/presentation/social_screen/social_one_screen.dart';
import 'package:crick11/presentation/team_creation_screen/team_creation_screen.dart';
import 'package:crick11/presentation/team_creation_screen/team_creation_two_screen.dart';
import 'package:crick11/presentation/opening_screen/opening_screen.dart';
import 'package:crick11/presentation/login_screen/login_screen.dart';
import 'package:crick11/presentation/otp_page_screen/otp_page_screen.dart';
import 'package:crick11/presentation/my_matches_screen/my_matches_screen.dart';
import 'package:crick11/presentation/payments_options_screen/payments_options_screen.dart';
import 'package:crick11/presentation/leaderboard_screen/leaderboard_screen.dart';
import 'package:crick11/presentation/team_creation_screen/team_preview_screen.dart';

class AppRoutes {
  static const String contestsDetailsScreen = '/contests_details_screen';

  static const String otpScreen = '/otp_screen';

  static const String contestsPage = '/contests_page';

  static const String pointsPage = '/points_page';

  static const String referralScreen = '/referral_screen';

  static const String paymentScreen = '/payment_screen';

  static const String continueKycScreen = '/continue_kyc_screen';

  static const String accountSummaryScreen = '/account_summary_screen';

  static const String socialScreen = '/social_screen';

  static const String socialOneScreen = '/social_one_screen';

  static const String teamCreationTwoScreen = '/team_creation_two_screen';

  static const String teamCreationScreen = '/team_creation_screen';

  static const String homeScreen = '/home_screen';

  static const String openingScreen = '/opening_screen';

  static const String loginScreen = '/login_screen';

  static const String otpPageScreen = '/otp_page_screen';

  static const String myMatchesScreen = '/my_matches_screen';

  static const String paymentsOptionsScreen = '/payments_options_screen';

  static const String leaderboardScreen = '/leaderboard_screen';

  static const String teamPreviewScreen = '/team_preview_screen';

  static Map<String, WidgetBuilder> routes = {
    contestsDetailsScreen: (context) => ContestsDetailsScreen(),
    otpScreen: (context) => OtpScreen(),
    homeScreen: (context) => HomeScreen(),
    contestsPage: (context) {
      final args = ModalRoute.of(context)!.settings.arguments as List<int>;
      return ContestsPage(
        event_id: args[0],
      );
    },
    referralScreen: (context) => ReferralScreen(),
    paymentScreen: (context) => PaymentScreen(),
    continueKycScreen: (context) => ContinueKycScreen(),
    accountSummaryScreen: (context) => AccountSummaryScreen(),
    pointsPage: (context) => PointsPage(),
    socialScreen: (context) => SocialScreen(),
    socialOneScreen: (context) => SocialOneScreen(),
    teamCreationTwoScreen: (context) => TeamCreationTwoScreen(),
    teamCreationScreen: (context) => TeamCreationScreen(),
    openingScreen: (context) => OpeningScreen(),
    loginScreen: (context) => LoginScreen(),
    otpPageScreen: (context) => OtpPageScreen(),
    myMatchesScreen: (context) => MyMatchesScreen(),
    paymentsOptionsScreen: (context) => const PaymentsOptionsScreen(),
    leaderboardScreen: (context) => LeaderboardScreen(),
    teamPreviewScreen: (context) => TeamPreviewScreen(),
  };
}
