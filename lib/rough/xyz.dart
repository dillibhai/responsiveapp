import 'package:flutter/material.dart';

class Xyz extends StatelessWidget {
  const Xyz({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: Colors.green,
      width: MediaQuery.of(context).size.width,
    );
  }
}