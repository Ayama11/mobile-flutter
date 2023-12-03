import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../help/const.dart';
import '../widgets/custom_elevatedButton.dart';
import '../widgets/custom_textField.dart';
import 'login_view.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDE8EE),
      body: ListView(
        children: [
          const SizedBox(
            height: 33,
          ),
          Image.asset(
            'lib/assets/images/login.png',
            height: 160,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Register',
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
                    hintText: 'User name',
                    icons: Icons.account_circle_outlined,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'E-Phone',
                    icons: Icons.phone,
                    typeKey: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'Address',
                    icons: Icons.location_on_outlined,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'Password',
                    icons: Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomElevatedButton(
                    text: 'Sign up',
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
                'Already have an account ? ',
                style: TextStyle(
                    fontFamily: 'PPlayfairDisplay-SemiBoldItalic',
                    fontSize: 18,
                    color: kFontColor),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(const LoginPage());
                },
                child: const Text(
                  'Login ',
                  style: TextStyle(
                      fontFamily: 'PTSerif-Regular',
                      fontSize: 22,
                      color: Color(0xffe73fe4)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
