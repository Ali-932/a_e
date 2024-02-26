import 'package:flutter/material.dart';

class CommanCart extends StatelessWidget {
  final String name;
  const CommanCart({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          fontSize: 16, color: Colors.black87, fontWeight: FontWeight.normal),
      textAlign: TextAlign.start,
      textDirection: TextDirection.rtl,
    );
  }
}

class CounterButton extends StatefulWidget {
  const CounterButton({Key? key}) : super(key: key);

  @override
  _CounterButtonState createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.remove, color: Colors.white),
          onPressed: () {
            setState(() {
              _counter = _counter > 0 ? _counter - 1 : 0;
            });
          },
        ),
        Text(_counter.toString()),
        IconButton(
          icon: Icon(Icons.add, color: Colors.white),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
      ],
    );
  }
}
class CartItem extends StatelessWidget {
  final String nameitem;

  final String priceitem;

  const CartItem({
    Key? key,
    required this.nameitem,

    required this.priceitem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Text(
          nameitem,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        Text(
          priceitem,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.white,
          ),
        ),

      ],


      );
  }
}
