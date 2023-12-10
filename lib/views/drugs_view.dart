import 'package:flutter/material.dart';
import 'package:repopharma_app/help/const.dart';
import 'package:repopharma_app/widgets/circular_container_shep.dart';
import 'package:repopharma_app/widgets/custom_clip.dart';

class Drugs extends StatelessWidget {
  const Drugs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ClipPath(
            clipper: CustomClipP(),
            child: Container(
              color: kBaseColor,
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    Positioned(
                      top: -100,
                      right: -250,
                      child: CircularContainer(
                        backgroundcolor: Colors.white.withOpacity(0.1),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: -300,
                      child: CircularContainer(
                        backgroundcolor: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
