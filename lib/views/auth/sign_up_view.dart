import 'package:flutter/material.dart';
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
                Text(
                  "sign up",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff4048FD),
                      fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
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
                    decoration: InputDecoration(
                      hintText: 'اسراء',
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
                // ... (Repeat the above pattern for other TextFields)

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
                    'sign up',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
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
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      style: TextButton.styleFrom(
                        primary: Color(0xff4048FD), // Text color
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      child: Text(
                        'Login',
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'هل لديك حساب سابقا؟',
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
