
import 'package:flutter/material.dart';
class BoxItem extends StatelessWidget {
  final String name;


  const  BoxItem ({
    Key? key,
    required this.name,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top:20),

      child: Container(width:154,
          height: 123,
          decoration: BoxDecoration(
            color: const Color(0xffD8DAFF),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: const Color(0XFFCAC9C9),
              width: 2.0,
            ),
          ),
          child:
          Padding(padding:  const EdgeInsets.only(top: 39,left: 12),
            child: Text(name,

              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4048FD),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,

            ),
          )


      ),
    );


  }
}