import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../widgets/header_home_view.dart/appbar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            AppBarW(
              titel: const Text(
                ' Cart',
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
          ],
        ),
      ), //body: const Center(child: Icon(Iconsax.shopping_cart)),
    );
  }
}
