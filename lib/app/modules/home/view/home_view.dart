import 'package:bacaku/app/modules/home/view/ebook_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.to(() => const EbookListView());
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
