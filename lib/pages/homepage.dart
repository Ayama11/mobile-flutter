import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/widgets/custom_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Gategory',
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 63, 63, 63)),
        ),
        backgroundColor: const Color.fromARGB(255, 231, 189, 240),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),

      //*****  Drawer         **** */
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 241, 227, 245),
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: ListView(
            children: [
              const SizedBox(
                height: 250,
              ),
              ListTile(
                title: const Text('My Profile'),
                leading: const Icon(Iconsax.profile_circle5),
                onTap: () {
                  // Get.to( );
                },
              ),
              ListTile(
                title: const Text('Change Language'),
                leading: const Icon(Iconsax.language_square5),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Dark Mode'),
                leading: const Icon(Iconsax.moon5),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Log Out'),
                leading: const Icon(Iconsax.logout_15),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),

      //GridView.builder

      body: Padding(
        padding: const EdgeInsets.all(40),
        child: GridView.builder(
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3.1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15),
            itemBuilder: (BuildContext context, int index) {
              return const CustomCard();
            }),
      ),
    );
  }
}
