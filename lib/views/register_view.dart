import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../help/const.dart';
import '../widgets/custom_elevated_Buttom.dart';
import '../widgets/custom_text_Field.dart';
import 'login_view.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            'lib/assets/images/Security On-bro.png',
            height: 1,
          ),

          const Icon(
            Iconsax.user_edit,
            color: kFontColor,

            //Color.fromARGB(255, 109, 108, 108),
            size: 100,
          ),
          //     const Icon(Iconsax.row_vertical),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'PTSerif-Regular',
                      fontSize: 35,
                      color: kFontColor,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    hintText: 'User name',
                    icons: Icons.account_circle_outlined,
                    //
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
                    height: 40,
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
                  fontSize: 16,
                  color: Color.fromARGB(255, 109, 108, 108),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(const LoginPage());
                },
                child: const Text(
                  'Login ',
                  style: TextStyle(
                    fontFamily: 'PTSerif-Regular',
                    fontSize: 20,
                    color: kFontColor,
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
