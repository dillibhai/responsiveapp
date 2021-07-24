import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}


class _CategoriesState extends State<Categories> {
  List<String> categories=[
"Electronics",
'video Games',
'Devices & Accessories',
'Music',
'watches'
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 20.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:List.generate(
          categories.length,
         (index) => Padding(padding: EdgeInsets.only(
           bottom: 5,
           top: 5,
           right: 5,
           left: index==0? 20:0,
         ),
         child: ElevatedButton(onPressed: (){
           setState(() {
             selectedIndex=index;
           });
         }, 
         style: ButtonStyle(
           shape: MaterialStateProperty.all(
             RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10),
             ),
           ),
           padding: MaterialStateProperty.all(
             EdgeInsets.all(20),
           ),
           backgroundColor: MaterialStateProperty.all(
            selectedIndex==index ? Colors.white.withOpacity(0.8):Theme.of(context).accentColor
           )
         ),
         
         child: Text(
           categories[index],
           style: TextStyle(
             fontWeight: FontWeight.bold,
             color: selectedIndex==index? Theme.of(context).primaryColor:Colors.black.withOpacity(0.3),
           ),
         )),
         ),
         ),
      ),
    ),
    );
  }
}