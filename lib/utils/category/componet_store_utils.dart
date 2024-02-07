import 'package:flutter/material.dart';
class CommonItem extends StatelessWidget {
  final String nameitem;
  final String imagePath;
  final String priceitem;

  const CommonItem({
    Key? key,
    required this.nameitem,
    required this.imagePath,
    required this.priceitem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return
      Container(
        width: 114,
        height: 129,
        decoration: BoxDecoration(
          color: Color(0xff777DFA),
          borderRadius: BorderRadius.circular(7),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 2.0),
              blurRadius: 4.0,
            ),
          ],

        ),
        child: Column(
          children: [
            Container(
              width: 114,
              height: 82,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child:
              Image.asset(imagePath,
                height: 18,width: 8,),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:50, top: 2),
                    child: Text(
                      nameitem,
                      style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow:
                      TextOverflow.ellipsis, // Prevent overflow of text
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left:10, ),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 15,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:30, ),
                        child: Text(
                          " 20,000 د.ع ",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          overflow:
                          TextOverflow.ellipsis, // Prevent overflow of text
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
class NameStore extends StatelessWidget {
  final String name;


  const NameStore({
    Key? key,
    required this.name,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Text(
      'name',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.white,
      ),
    );
  }
}



























