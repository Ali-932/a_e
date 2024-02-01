import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;
  final tabs =[
    Center(child: Text("رئيسيه"),),
    Center(child: Text("عربة"),),
    Center(child: Text("اقسام"),),
    Center(child: Text("شخصي"),),
    Center(child: Text("موقع"),),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: const Color(0xff4048FD),
        type: BottomNavigationBarType.fixed,
        //selectedFontSize:25,
       // unselectedFontSize: 20,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white, size: 35),
            label: 'رئيسيه',
            backgroundColor: const Color(0xff4048FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.white, size: 35),
            label: 'عربه',
            backgroundColor: const Color(0xff4048FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_list_alt, color: Colors.white, size: 35),
            label: 'اقسام',
            backgroundColor: const Color(0xff4048FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white, size: 35),
            label: 'شخصي',
            backgroundColor: const Color(0xff4048FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_sharp, color: Colors.white, size: 35),
            label: 'موقع',
            backgroundColor: const Color(0xff4048FD),
          ),
        ],
      ),
    );
  }
}
