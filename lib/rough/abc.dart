import 'package:flutter/material.dart';

class Abc extends StatelessWidget {
  const Abc({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: Theme.of(context).accentColor,
      width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(Icons.shopping_bag_outlined),
            Container(
              width: 280.0,
              height: 30,
              color: Colors.white,
              child: TextField(
                textAlign: TextAlign.center, 
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'search',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  suffixIcon: Icon(Icons.search))
                  // hintText: 'hello'
                ),
              ),
            
          ],),
          SizedBox(height: 10,),
          Text('E-Commerce', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          Column(
            
          )
        ],
      ),
    ),
    );
  }
}