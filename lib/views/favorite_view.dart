import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Iconsax.heart)),
    );
  }
}
