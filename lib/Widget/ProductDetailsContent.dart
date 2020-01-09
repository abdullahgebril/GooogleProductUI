import 'package:flutter/material.dart';
import '../Widget/ProductDetailsTopBar.dart';
import '../model/Product.dart';
import 'Cart.dart';
import 'ViewAllButton.dart';
class ProductDetailsContent extends StatelessWidget {
  final screenHeight;
  final Product product;
  ProductDetailsContent(this.product, this.screenHeight);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: screenHeight * 0.3,
          ),
          Container(
            height: screenHeight * 0.3,
            child: Image.asset(product.imageUrl),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(
                'Starting*',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "\$ ",
                    style: TextStyle(color: Color(0xFF0000FF), fontSize: 10),
                  ),
                  TextSpan(
                    text: "${product.price}",
                    style: TextStyle(
                      color: Color(0xFF0000FF),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ]),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
//            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                product.name.replaceAll('\n', ''),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                'assets/images/stadia_logo.png',
                height: 20,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.productInfo,
            style: TextStyle(
              fontSize: 14,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CartStyle("assets/icons/create.png","Create"),
              CartStyle("assets/icons/connect.png","Connect"),
              CartStyle("assets/icons/discover.png","Dicover"),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[

              ViewAllButton('PRE_ORDER'),
                Spacer(),
                Material(
                  color: Colors.white,

                  elevation: 5,
                  shape: CircleBorder(),
                  child: Icon(Icons.add,size: 40,color: Colors.blue,),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
