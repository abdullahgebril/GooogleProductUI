


import 'package:flutter/material.dart';
import '../Widget/TwoProductItemWidget.dart';
import '../Widget/TapBar.dart';
import '../model/Product.dart';
import '../Widget/RightProductImage.dart';
import '../Widget/leftProductImage.dart';
import '../Widget/TwoProductItemWidget.dart';
import '../Widget/ViewAllButton.dart';
class Products_List_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset('assets/images/google_logo.png'),
        ),
        actions: <Widget>[
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: Image.asset('assets/icons/menu.png'),
         ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TapBar(),
            SizedBox(height: 3,),
            RightProcutImage(screenHight,pixel),
            LeftProductImage(screenHight,stadia),
            TwoProductItemWidget(screenHight,pixelStand,dayDreamView),
            ViewAllButton('View All')

          ],
        ),
      ),
    );
  }
}
