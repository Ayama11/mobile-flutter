import 'package:flutter/material.dart';
import 'package:repopharma_app/widgets/cards/card_Gategory.dart';
import 'package:repopharma_app/widgets/cards/custom_card.dart';

class GridViewhome extends StatelessWidget {
  const GridViewhome({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 200,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        clipBehavior: Clip.none,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //childAspectRatio: 3,
          crossAxisSpacing: 30,
          mainAxisSpacing: 15,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
