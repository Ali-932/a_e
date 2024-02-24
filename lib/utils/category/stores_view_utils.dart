
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
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 164,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffD8DAFF)),
        child: Row(
          children: [
            Image.asset(imagePath),

            Column(
              children: [
                Padding(
                  padding:const EdgeInsets.only(top: 20,left: 15),
                  child: Text(name,

                    style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF4048FD),
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding:const EdgeInsets.only(left:50, ), child:
                    Text( location,
                      style: const TextStyle(
                          fontSize: 8,
                          color: Color(0xFF4048FD),
                          fontWeight: FontWeight.normal),
                    ) ,
                    )  ,

                    const Padding(
                        padding:EdgeInsets.only(left: 0 ),
                        child:
                    Icon(Icons.location_on_rounded,color:Color(0xFF4048FD),size: 10, )
                    )  ,


                  ],),
                Padding(
                  padding: const EdgeInsets.only(top: 25 , )
                  ,child: Container(
                    height: 15,
                    width:75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color:const Color(0xFF4048FD),

                    ),
                    child:
                    Text(
                      price,
                      style: const TextStyle(
                          fontSize: 6,
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