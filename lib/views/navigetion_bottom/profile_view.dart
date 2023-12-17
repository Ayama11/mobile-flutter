import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
    );
  }
}
