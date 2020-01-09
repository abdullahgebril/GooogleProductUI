


import 'package:flutter/material.dart';
import '../Widget/ProductDetailsContent.dart';
import '../Widget/Product_Details_background.dart';
import '../Widget/ProductDetailsTopBar.dart';
import '../model/Product.dart';

class ProductDetailsScreen extends StatelessWidget {
 final  Product product;
 ProductDetailsScreen(this.product);
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[

          ProductDetailsBackground(screenHeight,screenwidth),
              
        SingleChildScrollView(
          child: Column(
            children: <Widget>[

              ProductDetailsTopBar(),
              ProductDetailsContent( product,screenHeight),
            ],
          ),
        )
       

        ],
      ),
    );
  }
}
