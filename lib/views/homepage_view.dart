import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/help/const.dart';
import 'package:repopharma_app/widgets/cards/custom_card.dart';
import 'package:repopharma_app/widgets/gridview_home.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/appbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // AppBar
        //  backgroundColor: Color.fromARGB(255, 255, 255, 255),
        // appBar: AppBar(
        //   elevation: 0,
        //   centerTitle: true,
        //   title: const Text(
        //     'Gategory',
        //     style:
        //         TextStyle(fontSize: 18, color: Color.fromARGB(255, 63, 63, 63)),
        //   ),
        //   backgroundColor: kFontColor,
        //   // actions: [
        //   //   IconButton(
        //   //     onPressed: () {},
        //   //     icon: const Icon(Icons.search),
        //   //     color: Colors.white,
        //   //   ),
        //   // ],
        // ),

        //*****  Drawer         **** */
        // drawer: Drawer(
        //   backgroundColor: const Color.fromARGB(255, 241, 227, 245),
        //   elevation: 0,
        //   child: Container(
        //     padding: const EdgeInsets.all(8),
        //     child: ListView(
        //       children: [
        //         const SizedBox(
        //           height: 250,
        //         ),
        //         ListTile(
        //           title: const Text('My Profile'),
        //           leading: const Icon(Iconsax.profile_circle5),
        //           onTap: () {
        //             // Get.to( );
        //           },
        //         ),
        //         ListTile(
        //           title: const Text('Change Language'),
        //           leading: const Icon(Iconsax.language_square5),
        //           onTap: () {},
        //         ),
        //         ListTile(
        //           title: const Text('Dark Mode'),
        //           leading: const Icon(Iconsax.moon5),
        //           onTap: () {},
        //         ),
        //         ListTile(
        //           title: const Text('Log Out'),
        //           leading: const Icon(Iconsax.logout_15),
        //           onTap: () {},
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        // //GridView.builder
        appBar: AppBarW(
          titel: Text('Medecin'),
          showBackArrow: true,
          backgroundColor: kBaseColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                // GridViewhome(),
              ],
            ),
          ),
        )
        // GridViewhome(),
        );
  }
}
