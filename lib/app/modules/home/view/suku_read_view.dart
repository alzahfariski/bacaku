import 'package:bacaku/app/modules/home/controller/home_controller.dart';
import 'package:bacaku/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SukuReadView extends StatefulWidget {
  const SukuReadView({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<SukuReadView> createState() => _SukuReadViewState();
}

class _SukuReadViewState extends State<SukuReadView> {
  final homeController = Get.put(HomeController());
  late int currentId;

  @override
  void initState() {
    super.initState();
    currentId = widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    width: 46,
                    height: 46,
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Color(0xff05445E),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffD4F1F4),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 22,
                        color: Color(0xff05445E),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Suku Kata',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff05445E),
                      ),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: Center(
                child: Text(
                  homeController.suku[currentId].sukuContent,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff05445E),
                      ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Bunyi',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff05445E),
                      ),
                ),
                GestureDetector(
                  onTap: () {
                    homeController
                        .playSound(homeController.suku[currentId].sukuAudio);
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff189AB4),
                    ),
                    child: const Icon(
                      Icons.volume_up_outlined,
                      color: TColors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                currentId != 0
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            currentId--;
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff75E6DA),
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff05445E),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Color(0xff75E6DA),
                              size: 24,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(
                        width: 60,
                        height: 60,
                      ),
                currentId + 1 == homeController.suku.length
                    ? const SizedBox(
                        width: 60,
                        height: 60,
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            currentId++;
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff75E6DA),
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff05445E),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Color(0xff75E6DA),
                              size: 24,
                            ),
                          ),
                        ),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
