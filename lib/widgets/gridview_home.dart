import 'package:flutter/material.dart';
import 'package:repopharma_app/widgets/card_Gategory.dart';
import 'package:repopharma_app/widgets/custom_card.dart';

class GridViewhome extends StatelessWidget {
  const GridViewhome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: GridView.builder(
          itemCount: 6,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          clipBehavior: Clip.none,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            //childAspectRatio: 3,
            crossAxisSpacing: 30,
            mainAxisSpacing: 15,
            mainAxisExtent: 200,
          ),
          itemBuilder: (BuildContext context, int index) {
            return const CardGategory();
          }),
    );
  }
}
