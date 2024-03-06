import 'package:a_e/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/auth/sign_up_location_controller.dart';
import '../../data/cities.dart';
import '../../utils/fonts.dart';
import '../../utils/navigation_bar.dart';
import 'login_view.dart';
import '../../services/sign_up_service.dart';


class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignUpController signupController = Get.find<SignUpController>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _password1Controller = TextEditingController();
  final TextEditingController _password2Controller = TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _phone_numberController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

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
                controller: signupController.name_controller,
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
                controller: signupController.phone_controller,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: '07701234567',
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
                controller: signupController.email_controller,
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
                controller: signupController.password_controller,
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
                controller: signupController.password_controller,
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
                'اختر موقعك:',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              width: 266,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F2FF),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black.withOpacity(0.1)),
              ),
              child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  dropdownColor: const Color(0xFFF1F2FF),
                value: signupController.locationController.text,
                onChanged: (newValue) {
                  signupController.locationController.text = newValue!;
                },
                items: citiesData.map((city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Align(
                      alignment: Alignment.centerRight,
                      // Align text to the right
                      child: Text(
                        city,
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintTextDirection: TextDirection.rtl,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black, // Set the arrow color to white
                ),

              ),
            ),
            const SizedBox(
            height: 30,
          ),
                GestureDetector(
                  onTap: ()
  async {
                      await  SignUpRemote.signUp({
                       'fullname':_fullnameController.text,
                        'email': _emailController.text,
                        'password1': _password1Controller.text,
                        'password2': _password2Controller.text,
                        'gender': _genderController.text,
                        'city': _cityController.text,
                        'phone_number': _phone_numberController.text,


                      });
                      if (SignUpRemote.sc==202) {
                        Get.to(() => Navbar());
                      }

                  },
                  child: Container(
                    width: 113,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xff4048FD),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Text(
                      'انشاء حساب',
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
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xff4048FD),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontFamily: GoogleFonts
                        .notoSansArabic()
                        .fontFamily,
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
    ),]
    ,
    )
    ,
    );
  }
}
