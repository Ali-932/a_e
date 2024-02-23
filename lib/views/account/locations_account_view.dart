import 'package:a_e/views/account/personal%20_account_view.dart';
import 'package:flutter/material.dart';

import '../../utils/category/componet_store_utils.dart';
import 'package:get/get.dart';

import '../../../controllers/navbar_controllers.dart';
class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller =
    Get.find<NavbarController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "العناوين",
        ),
        backgroundColor: const Color(0xFF4048FD),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () { controller.goToNestedPage( PersonalPage());},
        ),


      ),
      body:Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(top:20,left :45 ),
          child:
          Container(
            height: 200,
            width: 324,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20),bottomLeft:
              Radius.circular(20),bottomRight: Radius.circular(81.8) ,),
              color: Color(0xff171faf),

            ),
            child:
            Column(

              children: [


                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(top:10,left:190),
                      child: Text(
                        'بغداد _الاعظميه',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top:10,),child: Icon(
                      Icons.location_on_rounded,
                      size: 25,
                      color: Colors.white,
                    ),),



                  ],
                ),



              ],
            ),
          ),
        ),
      const SizedBox(height: 120,),

         Container(
            height:54,
            width: 304,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffE9EAFC),

            ),
            child:Center(
              child:Padding(padding: const EdgeInsets.only(top: 10,left: 90),
                child:  TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'اضافه عنوان جديد',
                    labelStyle: TextStyle(
                        color: Color(0xff4048FD),
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),),
    )









            )





          ),

      ],)


    );
  }
}
