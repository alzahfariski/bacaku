import 'package:bacaku/app/modules/home/controller/home_controller.dart';
import 'package:bacaku/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EbookReadView extends StatelessWidget {
  const EbookReadView({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text(homeController.book[id].bookTitle),
      ),
      body: ListView.builder(
        itemCount: homeController.book[id].bookHal.length,
        itemBuilder: (context, index) {
          final isLastTwo = index >= homeController.book[id].bookHal.length - 2;
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Image.asset(
                  homeController.book[id].bookHal[index],
                  fit: BoxFit.contain,
                ),
                if (!isLastTwo)
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: TColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.volume_up_sharp,
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
