import 'package:flutter/material.dart';
import 'package:tasks/task1/pages/item_into_page.dart';

void main() async{
//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());
 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: SafeArea(child: ItemInfoPage()),
    );
  }
}
