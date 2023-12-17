import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:repopharma_app/views/drug_deteles.dart';
import 'package:repopharma_app/widgets/custom_elevated_Buttom.dart';

import '../../help/const.dart';
import '../../views/navigetion_bottom/drugs_view.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.to(const DrugDetiels());
        // Navigator();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4),
        child: Card(
          color: const Color.fromARGB(255, 249, 247, 250),
          elevation: 5,
          child: SizedBox(
            height: 100,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image(
                    //   image: AssetImage('lib/assets/images/icon.png'),
                    //   width: 50,
                    //   height: 50,
                    // ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Iconsax.heart)),

                    const Center(
                      child: Text(
                        'Gastroent',
                        style: TextStyle(
                            color: Color.fromARGB(255, 10, 7, 7), fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '25@',
                            style: TextStyle(
                                color: Color.fromARGB(255, 10, 7, 7),
                                fontSize: 15),
                          ),
                          IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor:
                                      const Color.fromARGB(255, 216, 220, 243),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(40))),
                                  context: context,
                                  builder: (context) => Center(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(16),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 20),
                                                      child: Text('name'),
                                                    ),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                            Iconsax.heart))
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text('company'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text('quantity'),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Text('date'),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Text('price'),
                                              const SizedBox(
                                                height: 200,
                                              ),
                                              CustomElevatedButton(
                                                  text: 'add to cart',
                                                  width: 170),
                                            ],
                                          ),
                                        ),
                                      ));
                            },
                            icon: const Icon(Iconsax.more_square
                                // add_circle
                                ),
                            color: kBaseColor,
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
