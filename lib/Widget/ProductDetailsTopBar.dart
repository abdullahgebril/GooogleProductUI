


import 'package:flutter/material.dart';
class ProductDetailsTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      margin: EdgeInsets.only(top: 40),
      height: 60,
      child: Row(

        children: <Widget>[
          IconButton(icon:Icon(Icons.arrow_back),onPressed: (){
            Navigator.pop(context);
          },),
          Spacer(),
          Icon(Icons.search),
          SizedBox(width: 5,),
          Image.asset('assets/icons/menu.png'),
        ],
      ),
    );
  }
}
