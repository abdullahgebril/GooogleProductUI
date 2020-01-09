


import 'package:flutter/material.dart';
import '../model/Product.dart';

class TwoProductItemWidget extends StatelessWidget {
  final hieghtScreen;
  final Product firstproduct;
  final Product secondproduct;
  TwoProductItemWidget(this.hieghtScreen,this.firstproduct,this.secondproduct);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hieghtScreen* 0.25,

      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: firstproduct.backgroundColor,
              child: Column(
                children: <Widget>[

                   Image.asset(firstproduct.imageUrl,height:hieghtScreen* 0.15 ,),

                  Text(firstproduct.name,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                  Text(firstproduct.description,style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10
                  ),),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
                color: secondproduct.backgroundColor,
                child: Column(
                  children: <Widget>[
                    Image.asset(secondproduct.imageUrl,height:hieghtScreen* 0.15 ,),
                    Text(secondproduct.name,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Text(secondproduct.description,style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10
                    ),),
                  ],
                ),
              )

          )

        ],
      ),
    );
  }
}
