


import 'package:flutter/material.dart';

class CartStyle extends StatelessWidget {
  final String icon;
  final String title;
      CartStyle(this.icon,this.title);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(icon,height: 30,color: Colors.redAccent,),
          SizedBox(height: 5,),
          Text(title)
        ],
      ) ,


    );
  }
}


