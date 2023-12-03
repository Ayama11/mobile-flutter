import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/pages/homepage.dart';
import 'package:repopharma_app/pages/login.dart';
import 'package:repopharma_app/pages/logo.dart';
import 'package:repopharma_app/widgets/navigetion_mune.dart';

void main() {
  runApp(const RepoPharma());
}

class RepoPharma extends StatelessWidget {
  const RepoPharma({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/LoginPage", page: () => const LoginPage()),
        GetPage(name: "/LogoPage", page: () => const LogoPage()),
        GetPage(name: "/Homepage", page: () => const Homepage()),
        GetPage(
            name: "/NavigationMuneBottom",
            page: () => const NavigationMuneBottom())
      ],
      home: const LogoPage(),
    );
  }
}
