import 'package:flutter/material.dart';

import 'package:responsiveapp/model/product_item.dart';

class EcommerceItem extends StatelessWidget {
  final ProductItem item;
  final Function onPressed;
  final bool selected;
    EcommerceItem({
     required this.item,
     required this.onPressed,
     this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(20),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: selected ? Theme.of(context).primaryColor : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(4,4),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.2),
                ),
              ]
            ),
            child: Hero(tag: "${item.uid}", child: Image.asset(item.image, fit: BoxFit.contain,)),

          ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(item.title,
          style: TextStyle(color: Colors.black.withOpacity(0.5)),
          ),
          
          ),
          Text("\$ ${item.amount}",
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
