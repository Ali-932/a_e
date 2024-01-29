import 'package:flutter/material.dart';

import '../../utils/fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
              decoration: InputDecoration(
                hintText: 'Example@gmail.com',
                hintStyle: englishFont(color: Colors.black.withOpacity(0.3)),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.black38,
                ),
                fillColor: const Color(0xFFF1F2FF),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Adjust the value to control the roundness of the edges
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
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: englishFont(color: Colors.black.withOpacity(0.3)),
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
                // This line makes the input text hidden (masked) for passwords
                textDirection: TextDirection.ltr,
              )),
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
            child: const Text(
              'تسجيل دخول',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
