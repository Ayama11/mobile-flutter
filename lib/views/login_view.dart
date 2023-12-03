import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/views/register_view.dart';
import '../help/const.dart';
import '../widgets/custom_elevated_Buttom.dart';
import '../widgets/custom_text_Field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Center(
            child: Image.asset(
              'lib/assets/images/login1.png',
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'PTSerif-Regular',
                      fontSize: 35,
                      color: kFontColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'E-Phone',
                    typeKey: TextInputType.number,
                    icons: Icons.phone,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'Password',
                    icons: Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  CustomElevatedButton(
                    getPage: '/NavigationMuneBottom',
                    text: 'Sign in',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dont have an account ? ',
                style: TextStyle(
                  fontFamily: 'PPlayfairDisplay-SemiBoldItalic',
                  fontSize: 18,
                  color: kFontColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(
                    const RegisterPage(),
                  );
                },
                child: const Text(
                  'Register ',
                  style: TextStyle(
                    fontFamily: 'PTSerif-Regular',
                    fontSize: 18,
                    color: Color(0xffe73fe4),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
