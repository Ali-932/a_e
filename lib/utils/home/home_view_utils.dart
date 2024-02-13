import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/navbar_controllers.dart';
import '../../views/uppertage/catpage_view.dart';
class CommonItem extends StatelessWidget {
  final String name;
  final String imagePath;

  const CommonItem({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    var screenSize = MediaQuery.of(context).size;

    // Determine the width and height based on the screen size
    double width = screenSize.width * 0.5; // example: half of the screen width
    double imageHeight = width * (162.97 / 188); // maintain the aspect ratio
    double containerHeight = imageHeight + 90; // additional height for text and icon

    return
      Container(
      width: width,
      height: containerHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 2.0),
            blurRadius: 4.0,
          ),
        ],
        border: Border.all(
          color: Colors.white38,
          width: 2.0,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: width,
            height: imageHeight,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Image.asset(
              imagePath,
              height: imageHeight,
              width: width,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding:  const EdgeInsets.only(left: 70,top: 10),child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF5F5B5B),
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis, // Prevent overflow of text
                ),),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(padding: EdgeInsets.only(left:5,bottom:5 ),child: Icon(
                      Icons.location_on_sharp,
                      size: 25,
                      color: Color(0xff4048FD),
                    ),)

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

class Category extends StatelessWidget {
  final String name;
  final String imagePath;
  const Category({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 84,
      height: 106,
      decoration: BoxDecoration(
        color: const Color(0xff4048FD),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 84,
            height: 84,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
                bottomLeft: Radius.circular(7),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Image.asset(
              imagePath,
              height: 51,
              width: 50,
            ),
          ),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                  fontSize: 11.29,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class UpperTag extends StatelessWidget {
  final String name;
  final String imagePath;

  const UpperTag({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 33.8,
        width: 69.35,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.12),
          color: const Color(0xff4048FD),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontSize: 11.29,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              imagePath,
              height: 22.59,
              width: 22.59,
            ),
          ],
        ),
      ),
    );
  }
}


class UpperTagRow extends StatelessWidget {
  final NavbarController controller =
  Get.find<NavbarController>();
  UpperTagRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [



          GestureDetector(
            onTap: () {
              controller.goToNestedPage(CatPage());
            },
            child:   UpperTag(
                name: "قطط",
                imagePath:
                "assets/images/UpperTag/UpperTag_image_cat.png"),
          ),

          UpperTag(
              name: "كلاب",
              imagePath:
              "assets/images/UpperTag/UpperTag_image_dog.png"),
          UpperTag(
              name: "طيور",
              imagePath:
              "assets/images/UpperTag/UpperTag_image_Hams.png"),
          UpperTag(
              name: "ارانب",
              imagePath:
              "assets/images/UpperTag/UpperTag_image_Rabbit.png"),
          UpperTag(
              name: "سلحفاة",
              imagePath:
              "assets/images/UpperTag/UpperTag_image_turtle.png"),
        ],
      ),
    );
  }
}
