import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/views/homepage_view.dart';
import 'package:repopharma_app/views/madecen_view.dart';

class CardGategory extends StatelessWidget {
  const CardGategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const Medicen());
        // Navigator();
      },
      child: Card(
        shape: ShapeBorder.lerp(const CircleBorder(), const CircleBorder(), 5),
        elevation: 7,
        color: Colors.white,
        child: Container(
          decoration: const BoxDecoration(),
          height: 100,
          width: 200,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'lib/assets/images/icon.png',
                  height: 70,
                  width: 70,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('name gatrey'),
            ],
          ),
        ),
      ),
    );
  }
}
