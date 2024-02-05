import 'package:flutter/material.dart';

import '../../utils/category/componet_shop_utils.dart';

class ItemShop extends StatelessWidget {
  const ItemShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'متجر دبدوب',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF4048FD),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 12),
              child: Container(
                height: 168,
                width: 358,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset("assets/images/shop/interface_image_shop.png"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                width: 470,
                height: 8,
                color: Color(0xffD9D9D9),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    height: 31,
                    width: 97,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(3),
                        topLeft: Radius.circular(3),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Color(0xff4048FD),
                    ),
                    child: Center(
                      child: Text(
                        'كلفه التوصيل 1000',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 130),
                  child: Text(
                    'متجر دبدوب',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xFF4048FD),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    height: 31,
                    width: 67,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(3),
                        topLeft: Radius.circular(3),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Color(0xff777DFA),
                    ),
                    child: Center(
                      child: Text(
                        '20-30 ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 115),
                  child: Text(
                    'بغداد/شارع المعارض',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                ),
                Icon(
                  Icons.location_on_rounded,
                  size: 25,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                width: 470,
                height: 8,
                color: Color(0xffD9D9D9),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 300),
              child: Text(
                'شائع',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff4048FD),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(height: 10),
                  CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),
                  SizedBox(width: 30),
                  CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),
                  SizedBox(width: 20),
                  CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),
                  SizedBox(width: 20),
                  CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                width: 470,
                height: 8,
                color: Color(0xffD9D9D9),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 280),
              child: Text(
                'اغذيه',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff4048FD),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                   CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),
                 CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),

              ],
            ),
            SizedBox(
              height: 30,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),

                CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),

              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),

               CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),

              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),

               CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),

              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                width: 470,
                height: 8,
                color: Color(0xffD9D9D9),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 260),
              child: Text(
                'حيوانات',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff4048FD),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CommonItem(
                  nameitem: "قط منقط",
                  imagePath: 'assets/images/shop/animal_image_shop.png',
                  priceitem: '20.000',
                ),

                CommonItem(
                  nameitem: "قط هندي",
                  imagePath: 'assets/images/shop/animal_image_shop.png',
                  priceitem: '20.000',
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
