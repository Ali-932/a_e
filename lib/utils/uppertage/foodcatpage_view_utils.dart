import 'package:flutter/material.dart';
class ItemfoodCat extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;
  const ItemfoodCat({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:135,
      height:236,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],

      ),
      child:Column(
        children: [
          Image.asset(imagePath),


          Container(
            width:135,
            height:100,
            decoration: const BoxDecoration(
              borderRadius:BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft:Radius.circular(20) , )
              ,color: Color(0XFF4048FD),

            ),
            child:Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 5, ),
                  child: Text( "name",

                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),

                ),
                Padding(padding: EdgeInsets.only(left: 70),child:Text(
                  price,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),

                ) ,),
                SizedBox(height: 10,),
                Container(
                    height:28 ,
                    width:58 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),
                    child:Center(child:
                    Text(
                      'اضافه',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),

                    ))

                )



              ],
            ),

          ),

        ],
      ) ,



    );
  }
}