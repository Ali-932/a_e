import 'package:a_e/utils/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/auth/user_controller.dart';
import '../../services/sign_in_service.dart';
import '../../utils/fonts.dart';
import 'sign_up_view.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  // TextEditingController instances for email and password
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final SignInController signInController = Get.find<SignInController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              Image.asset('assets/images/Logo.png'),
              const SizedBox(
                width: 266,
                child: Text(
                  'ادخل ايميلك:',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: 50,
                width: 266,
                child: TextField(
                  controller: _emailController, // Connect the controller
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Example@gmail.com',
                    hintStyle:
                        englishFont(color: Colors.black.withOpacity(0.3)),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.black38,
                    ),
                    fillColor: const Color(0xFFF1F2FF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  textDirection: TextDirection.ltr,
                ),
              ),
              const SizedBox(
                width: 266,
                child: Text(
                  'ادخل كلمة المرور:',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: 50,
                width: 266,
                child: TextField(
                  controller: _passwordController,
                  // Connect the controller
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: '*********',
                    hintStyle:
                        englishFont(color: Colors.black.withOpacity(0.3)),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black38,
                    ),
                    fillColor: const Color(0xFFF1F2FF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  obscureText: true,
                  textDirection: TextDirection.ltr,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 113,
                height: 45,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color(0xff4048FD),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: TextButton(
                  onPressed: () async {
                    await signInController.signInUser({
                      'email': _emailController.text,
                      'password': _passwordController.text,
                    });
                    if (SignInRemote.sc==200) {
                      Get.to(() => Navbar());
                    }
                  },
                  child: const Text(
                    'تسجيل دخول',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigate to the second screen when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color(0xff4048FD),
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: GoogleFonts.notoSansArabic().fontFamily,
                      ),
                    ),
                    child: const Text(
                      'انشاء حساب',
                      style: TextStyle(fontSize: 16),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  const Text(
                    'ليس لديك حساب؟',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
