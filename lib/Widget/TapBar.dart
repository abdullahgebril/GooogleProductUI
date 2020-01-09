


import 'package:flutter/material.dart';

class TapBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:10.0,horizontal: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30),),
        color: Color(0xFFE0E0E0),
      ),
      child: TextField(
        style: TextStyle(
            fontSize: 16,
            color: Colors.black
        ),
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            size: 20,
            color: Colors.grey,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black
          )
        ),
      ),
    );
  }
}
