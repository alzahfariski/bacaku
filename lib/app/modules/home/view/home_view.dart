import 'package:bacaku/app/modules/home/view/ebook_list_view.dart';
import 'package:bacaku/app/modules/home/view/huruf_list_view.dart';
import 'package:bacaku/app/modules/home/view/kosakata_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 400,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () => Get.to(() => const HurufListView()),
              child: Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Huruf',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: const Color(0XFF2B3F57)),
                    ),
                    Image.asset('assets/images/huruf.png'),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 290,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () => Get.to(() => const KosaKataView()),
              child: Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kosa Kata',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: const Color(0XFF2B3F57)),
                    ),
                    Image.asset('assets/images/kosa.png'),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 180,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () => Get.to(() => const EbookListView()),
              child: Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Buku Cerita',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: const Color(0XFF2B3F57)),
                    ),
                    Image.asset('assets/images/cerita.png'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
