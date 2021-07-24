import 'package:flutter/material.dart';

class Kmn extends StatelessWidget {
  const Kmn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
    );
  }
}