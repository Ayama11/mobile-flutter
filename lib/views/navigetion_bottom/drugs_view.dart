import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/help/const.dart';
import 'package:repopharma_app/widgets/Appbar/appbar.dart';
import 'package:repopharma_app/widgets/cards/card_Gategory.dart';
import 'package:repopharma_app/widgets/cards/custom_card.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  // TAppBar(),
                  AppBarW(
                    titel: const Text(
                      'Welcome back',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontSize: 24,
                          fontFamily: 'Charm-Regular'),
                    ),
                    backgroundColor: Colors.transparent,
                    actions: [
                      Builder(builder: (BuildContext context) {
                        return IconButton(
                          icon: const Icon(Iconsax.notification),
                          color: Colors.white,
                          onPressed: () {},
                        );
                      })
                    ],

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
                  const SizedBox(
                    height: 55,
                  ),
                  const SearchContainer(
                    textsearche: 'Search in store',
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                'Gategory',
                style: TextStyle(
                    fontSize: 22, fontFamily: 'PlayfairDisplay-SemiBoldItalic'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  GridViewhome(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, index) =>
                        const CardGategory(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
