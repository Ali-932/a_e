import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 42.35,
              width: 305.87,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.53),
                color: Color(0xffD4D4D4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ابحث هنا',
                    style: TextStyle(fontSize: 16, color: Colors.black26),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 42.35,
                    width: 41.41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.53),
                      color: Color(0xff4048FD),
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 116.7,
              width: 305.87,
              child: Image.asset("assets/images/image1.jpg"),
            ),

        Padding(
          padding:EdgeInsets.only(top:10),
          child:
             Text(
                'حيوانك الاليف',
                style: TextStyle(fontSize: 16, color: Color(0xff5F5B5B), fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
               textDirection:TextDirection.rtl ,

              ),),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 33.8,
                  width: 63.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.12),
                    color: Color(0xff4048FD),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'القطط',
                        style: TextStyle(fontSize: 11.29, color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Image.asset('assets/images/img_1.png', height: 22.59, width: 22.59,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 33.8,
                  width: 63.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.12),
                    color: Color(0xff4048FD),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'الكلاب',
                        style: TextStyle(fontSize: 11.29, color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Image.asset('assets/images/img_4.png', width: 22.59, height: 22.59,),
                    ],
                  ),
                ),
              ),
    Padding(padding:EdgeInsets.all( 10),
    child: Container(

    height: 33.8,
    width: 63.35,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30.12),
    color: Color(0xff4048FD),

    ),

    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

    Text(
    'الكلاب',
    style: TextStyle(fontSize:11.29, color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,

    ),

    Image.asset('assets/images/img_4.png',width: 22.59,height: 22.59,),
    ],
    ),
    ),),
              Padding(padding:EdgeInsets.all( 10),
                child: Container(

                  height: 33.8,
                  width: 63.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.12),
                    color: Color(0xff4048FD),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        'طيور',
                        style: TextStyle(fontSize:11.29, color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,

                      ),
                      Image.asset('assets/images/img_5.png',width: 22.59,height: 22.59,),
                    ],
                  ),

                )
                ,
              ),
              Padding(padding:EdgeInsets.all( 10),
                child: Container(

                  height: 33.8,
                  width: 63.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.12),
                    color: Color(0xff4048FD),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        'طيور',
                        style: TextStyle(fontSize:11.29, color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,

                      ),
                      Image.asset('assets/images/img_5.png',width: 22.59,height: 22.59,),
                    ],
                  ),

                )
                ,
              ),
              Padding(padding:EdgeInsets.all( 10),
                child: Container(

                  height: 33.8,
                  width: 63.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.12),
                    color: Color(0xff4048FD),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        'طيور',
                        style: TextStyle(fontSize:11.29, color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,

                      ),
                      Image.asset('assets/images/img_5.png',width: 22.59,height: 22.59,),
                    ],
                  ),

                )
                ,
              ),
    // Repeat the pattern for other items
            ],
          ),
        ),

        SizedBox(
              height: 10,
            ),

            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Container(
                    width: 81,
                    height: 102,
                    decoration: BoxDecoration(
                      color:Color(0xff4048FD),
                      borderRadius: BorderRadius.circular( 7),

                    ),
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 81,
                          height: 84,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(7),topRight:Radius.circular( 7) ,bottomLeft: Radius.circular(7) ,bottomRight:Radius.circular( 40), ),

                          ),

                          child:Image.asset('assets/images/img.png',height: 51,width: 50,),
                        ),

                        Expanded(
                          child: Text(
                            'متاجر',
                            style: TextStyle(fontSize: 11.29, color: Color(0xFFFFFFFF), fontWeight: FontWeight.normal),

                            textDirection: TextDirection.rtl,
                          ),
                        ),

                      ],

                    ),

                  ),
                  Container(
                    width: 81,
                    height: 102,
                    decoration: BoxDecoration(
                      color:Color(0xff4048FD),
                      borderRadius: BorderRadius.circular( 7),

                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 81,
                          height: 84,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(7),topRight:Radius.circular( 7) ,bottomLeft: Radius.circular(7) ,bottomRight:Radius.circular( 40), ),

                          ),

                          child:Image.asset('assets/images/img_2.png',height:20,width:26,),
                        ),

                        Expanded(
                          child: Text(
                            'عيادات',
                            style: TextStyle(fontSize: 11.29, color: Color(0xFFFFFFFF), fontWeight: FontWeight.normal),

                            textDirection: TextDirection.rtl,
                          ),
                        ),


                      ],

                    ),

                  ),
                  Container(
                    width: 81,
                    height: 102,
                    decoration: BoxDecoration(
                      color:Color(0xff4048FD),
                      borderRadius: BorderRadius.circular( 7),

                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 81,
                          height: 84,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(7),topRight:Radius.circular( 7) ,bottomLeft: Radius.circular(7) ,bottomRight:Radius.circular( 40), ),

                          ),

                          child:Image.asset('assets/images/img_3.png',height: 48,width: 53,),
                        ),

                        Expanded(
                          child: Text(
                            'خدمات منزليه',
                            style: TextStyle(fontSize: 11.29, color: Color(0xFFFFFFFF), fontWeight: FontWeight.normal),

                            textDirection: TextDirection.rtl,
                          ),
                        ),

                      ],

                    ),

                  ),
                ],),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
