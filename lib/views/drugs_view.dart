import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/help/const.dart';
import 'package:repopharma_app/widgets/Appbar/appbar.dart';
import 'package:repopharma_app/widgets/card_Gategory.dart';
import 'package:repopharma_app/widgets/custom_card.dart';
import 'package:repopharma_app/widgets/gridview_home.dart';

import 'package:repopharma_app/widgets/header_home_view.dart/appbar.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/circular_container_shep.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/curve_widget.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/custom_clip.dart';

import 'package:repopharma_app/widgets/header_home_view.dart/primary_header.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/searche_container.dart';

class Drugs extends StatelessWidget {
  const Drugs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  // TAppBar(),
                  AppBarW(
                    titel: Text(
                      'welcome back',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontSize: 18),
                    ),

                    //     // actions: [
                    //     //   // Icon(Icons.read_more_outlined)
                    //     //   //DrawerCustom(),

                    //     //   IconButton(
                    //     //     onPressed: () {
                    //     //       scaffoldkey.currentState!.openEndDrawer();
                    //     //     },
                    //     //     icon: const Icon(Icons.read_more_outlined),
                    //     //     color: Colors.white,
                    //     //   ),
                    //     // ],
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  SearcheContainer(),
                ],
              ),
            ),
            Center(
              child: Text(
                'Gategory',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  GridViewhome(),
                  //  CardGategory(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
