import 'package:flutter/material.dart';
// import 'package:responsiveapp/components/items/categories.dart';
import 'package:responsiveapp/components/items/ecommerce_item.dart';
// import 'package:responsiveapp/model/product_item.dart';
// import 'package:responsiveapp/model/product_item.dart';
import 'package:responsiveapp/rough/abc.dart';
import 'package:responsiveapp/rough/kmn.dart';
import 'package:responsiveapp/rough/xyz.dart';
import 'package:responsiveapp/widgets/responsive_layout.dart';

class WidgetTree extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayout(
        mobile: Abc(),
        tablet: Row(children: [
          Expanded(
            flex: 9,
            child: Abc(),
          ),
          Expanded(
            flex: 9,
            child: Kmn(),
          ),
        ],),
        desktop: Row(
          children: [
            Expanded(child: Abc(),
            flex: _size.width >1340 ? 3:5,
            ),
            Expanded(
              flex: _size.width >1340 ? 8:10,
              child: Kmn()),
              Expanded(
                flex: _size.width >1340? 2:4,
                child: Xyz()),
          ],
        ),
      ),
      
    );
  }
}


