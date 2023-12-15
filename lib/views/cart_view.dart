import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Iconsax.shopping_cart)),
    );
  }
}
