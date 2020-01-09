



import 'package:flutter/material.dart';
class ViewAllButton extends StatelessWidget {
  final String title;
  ViewAllButton(this.title);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 90),
      textColor: Colors.white,
          onPressed: (){},
          color: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Text(title,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        );

  }
}
