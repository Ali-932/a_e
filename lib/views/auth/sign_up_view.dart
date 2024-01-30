import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/fonts.dart';
import 'login_view.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // TextEditingController instances for name, phone, email, and passwords
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Dispose of controllers to avoid memory leaks
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _confirmPasswordController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 90,
                ),
                const Text(
                  "انشاء حساب",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff4048FD),
                      fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 266,
                  child: Text(
                    'ادخل اسمك:',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 266,
                  child: TextField(
                    controller: _nameController,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Esraa',
                      hintStyle:
                      englishFont(color: Colors.black.withOpacity(0.3)),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black38,
                      ),
                      fillColor: const Color(0xFFF1F2FF),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                const SizedBox(
                  width: 266,
                  child: Text(
                    'ادخل رقم الهاتف :',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 266,
                  child: TextField(
                    controller: _phoneController,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: '0770',
                      hintStyle:
                      englishFont(color: Colors.black.withOpacity(0.3)),
                      prefixIcon: const Icon(
                        Icons.phone,
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
                  ),
                ),
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
                    controller: _emailController,
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
                    // This line makes the input text hidden (masked) for passwords
                    textDirection: TextDirection.ltr,
                  ),
                ),
                const SizedBox(
                  width: 266,
                  child: Text(
                    'تاكيد كلمة المرور:',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 266,
                  child: TextField(
                    controller: _confirmPasswordController,
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
                    // This line makes the input text hidden (masked) for passwords
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
                  child: const Text(
                    'انشاء حساب',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                          MaterialPageRoute(builder: (context) => LoginScreen()),
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
                        'تسجيل الدخول',
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    const Text(
                      'هل لديك حساب سابق؟',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
