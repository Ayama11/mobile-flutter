import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/help/const.dart';
import 'package:repopharma_app/widgets/cards/custom_card.dart';
import 'package:repopharma_app/widgets/gridview_home.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/appbar.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/searche_container.dart';

class Medicen extends StatelessWidget {
  const Medicen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarW(
      // titel: Text(
      //   ' Medicen',
      //   style: TextStyle(color: Colors.black),
      // ),
      // backgroundColor: Colors.transparent,
      // showBackArrow: true,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            AppBarW(
              titel: const Text(
                ' Medicen',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.transparent,
              showBackArrow: true,
              actions: [
                Builder(builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(
                      Iconsax.notification,
                      color: Colors.black,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  );
                })
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchContainer(textsearche: 'Search in madicen'),
            Padding(
              padding: const EdgeInsets.all(8),
              child: GridViewhome(
                itemCount: 8,
                itemBuilder: (BuildContext context, index) =>
                    const CustomCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
