import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../views/drugs_view.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const Drugs());
        // Navigator();
      },
      child: const Padding(
        padding: EdgeInsets.all(8),
        child: Card(
          color: Color.fromARGB(255, 249, 247, 250),
          elevation: 5,
          child: SizedBox(
            height: 100,
            width: 300,
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image(
                  //   image: AssetImage('lib/assets/images/icon.png'),
                  //   width: 50,
                  //   height: 50,
                  // ),
                  Text(
                    'Gastroent',
                    style: TextStyle(
                        color: Color.fromARGB(255, 10, 7, 7), fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'price 123',
                    style: TextStyle(
                        color: Color.fromARGB(255, 10, 7, 7), fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
