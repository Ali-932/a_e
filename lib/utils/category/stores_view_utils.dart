
import 'package:flutter/material.dart';
class  Stores extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;
  final String location;

  const Stores  ({
    Key? key,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.location,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 164,
        width: 378,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Color(0xffD8DAFF)),
        child: Row(
          children: [
            Image.asset(imagePath),

            Column(
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 20,left: 20),
                  child: Text(name,

                    style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xFF4048FD),
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(left:69, ), child:
                    Text( location,
                      style: const TextStyle(
                          fontSize: 10,
                          color: Color(0xFF4048FD),
                          fontWeight: FontWeight.normal),
                    ) ,
                    )  ,

                    Padding(
                        padding:EdgeInsets.only(left: 4 ), child:
                    Icon(Icons.location_on_rounded,color:Color(0xFF4048FD),size: 16, )
                    )  ,


                  ],),
                Padding(padding: EdgeInsets.only(top: 25,left:38 , )
                  ,child: Container(
                    height: 19,
                    width:83,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color:Color(0xFF4048FD),

                    ),
                    child:Text( price,
                      style: const TextStyle(
                          fontSize: 7,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ) ,
                  ),)






              ],
            )
          ],

        ),
      ),

    );


  }
}