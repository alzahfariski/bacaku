import 'package:bacaku/app/modules/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  final onBoardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    onBoardingController.startAnimation();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboarding.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}