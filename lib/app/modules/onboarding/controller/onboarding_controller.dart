import 'package:bacaku/app/modules/home/view/home_view.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    animate.value = true;
    await Future.delayed(
      const Duration(milliseconds: 2800),
    );
    Get.offAll(() => const HomeView());
  }
}