import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/views/forget_view.dart';
import 'package:repopharma_app/Auth/register/register_view.dart';
import '../help/const.dart';
import '../widgets/custom_elevated_Buttom.dart';
import '../widgets/custom_text_Field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String? phone;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            const SizedBox(height: 50),
            Image.asset(
              'lib/assets/images/Mobile login (1).gif',
              height: 270,
              width: 260,
            ),
            const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'PTSerif-Regular',
                  fontSize: 30,
                  color: kFontColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    CustomTextField(
                      onChanged: (data) {
                        phone = data;
                        print(phone);
                      },
                      hintText: 'E-Phone',
                      typeKey: TextInputType.number,
                      icons: Icons.phone,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      onChanged: (data) {
                        password = data;
                        print(password);
                      },
                      obscureText: true,
                      typeKey: TextInputType.visiblePassword,
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dont have an account ? ',
                  style: TextStyle(
                    fontFamily: 'PPlayfairDisplay-SemiBoldItalic',
                    fontSize: 16,
                    color: Color.fromARGB(255, 109, 108, 108),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.off(
                      RegisterPage(),
                    );
                  },
                  child: const Text(
                    'Register now',
                    style: TextStyle(
                      fontFamily: 'PTSerif-Regular',
                      fontSize: 18,
                      color: kFontColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Forget your password ? ',
                  style: TextStyle(
                    fontFamily: 'PPlayfairDisplay-SemiBoldItalic',
                    fontSize: 16,
                    color: Color.fromARGB(255, 109, 108, 108),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.off(
                      const ForgetPassword(),
                    );
                  },
                  child: const Text(
                    'Create now',
                    style: TextStyle(
                      fontFamily: 'PTSerif-Regular',
                      fontSize: 18,
                      color: kFontColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
