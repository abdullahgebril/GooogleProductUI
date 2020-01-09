import 'package:flutter/material.dart';
import '../model/Product.dart';
import '../Screens/ProductDetailsScreen.dart';
class RightProcutImage extends StatelessWidget {
  final hieghtscreen;
  final Product product;
  RightProcutImage(this.hieghtscreen, this.product);
  @override
  Widget build(BuildContext context) {

     return  Container(

        padding: EdgeInsets.only(left: 30),
        height: hieghtscreen * 0.3,
        color: product.backgroundColor,
        child: (Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      product.buttonText,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(

                children: <Widget>[

                  Positioned(
                    bottom:-50,
                    top: 50,

                    child: Transform.rotate(
                      angle: -0.2,
                      child: Image.asset(product.imageUrl),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),

    );
  }
}
