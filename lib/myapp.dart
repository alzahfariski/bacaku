import 'package:bacaku/app/modules/onboarding/view/onboarding_view.dart';
import 'package:bacaku/utils/constants/text_strings.dart';
import 'package:bacaku/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: OnBoardingView(),
    );
  }
}