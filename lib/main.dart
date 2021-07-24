import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/widget_tree.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive App',
      theme: ThemeData(
        primaryColor: Color(0xFF283C63),
        accentColor: Color(0xFFE7E9F5),
        iconTheme: IconThemeData(color: Colors.black.withOpacity(0.4)),
        
      ),
      home: WidgetTree(),
    );
      
    
  }
}