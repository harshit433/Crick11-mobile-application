import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crick11/routes/app_routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'core/utils/color_constant.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(DevicePreview(enabled: true, builder: ((context) => const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) => AdaptiveTheme(
        // Dark Theme Settings
        dark: ThemeData(
            primaryColor: ColorConstant.gray900,
            secondaryHeaderColor: Colors.white,
            scaffoldBackgroundColor: ColorConstant.gray900,
            appBarTheme: AppBarTheme(backgroundColor: ColorConstant.gray900),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: Colors.blue),
            textTheme: Theme.of(context)
                .textTheme
                .apply(displayColor: Colors.white, bodyColor: Colors.white),
            tabBarTheme: const TabBarTheme(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label)),
        // Light Theme Settings
        light: ThemeData.light().copyWith(
            primaryColor: Colors.white,
            secondaryHeaderColor: ColorConstant.black900,
            scaffoldBackgroundColor: ColorConstant.grey,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: ColorConstant.red800),
            appBarTheme: AppBarTheme(
              backgroundColor: ColorConstant.red800,
            ),
            textTheme: Theme.of(context)
                .textTheme
                .apply(displayColor: Colors.black, bodyColor: Colors.black),
            tabBarTheme: TabBarTheme(
                labelColor: ColorConstant.red800,
                unselectedLabelColor: Colors.black,
                indicatorColor: ColorConstant.red800,
                indicatorSize: TabBarIndicatorSize.label)),
        initial: AdaptiveThemeMode.dark,
        builder: (theme, darkTheme) => MaterialApp(
          title: 'crick11',
          theme: theme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.homeScreen,
          routes: AppRoutes.routes,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child as Widget,
            );
          },
        ),
      ),
    );
  }
}
