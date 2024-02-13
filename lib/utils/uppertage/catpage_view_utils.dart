import 'package:flutter/material.dart';
class ItemCat extends StatelessWidget {
  final String name;
  final String imagePath;


  const ItemCat ({
    Key? key,
    required this.name,
    required this.imagePath,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(padding:EdgeInsets.only(top:20 ,left: 12) ,child:  Container(
      width: 154,
      height: 92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFF4048FD),
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize:20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
            textDirection: TextDirection.rtl,
          ),

          Image.asset(imagePath,height: 40,
            width: 48,),


        ],
      ),
    ),
    );
  }
}