import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../pages/drugs.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const Drugs());
        const Navigator();
      },
      child: const Card(
        color: Color.fromARGB(255, 245, 241, 248),
        elevation: 5,
        child: SizedBox(
          height: 100,
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('lib/assets/images/login1.png'),
                width: 50,
                height: 50,
              ),
              Text(
                'Gastroenterological ',
                style: TextStyle(
                    color: Color.fromARGB(255, 10, 7, 7), fontSize: 15),
              ),
              SizedBox(
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
