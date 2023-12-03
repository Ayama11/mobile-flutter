import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/widgets/custom_elevatedButton.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDE8EE),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 70,
        ),
        Center(
          child: Image.asset(
            'lib/assets/images/logo.png',
            height: 280,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'RepoPharma',
          style: TextStyle(
              fontFamily: 'Kalam-Regular',
              fontSize: 35,
              color: Color(0xffFC9599)),
        ),
        const SizedBox(
          height: 110,
        ),
        CustomElevatedButton(
          text: 'Start',
          getPage: '/LoginPage',
          width: 120,
        ),
      ]),
    );
  }
}
