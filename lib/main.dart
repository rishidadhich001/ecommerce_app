import 'package:ecommerce_app/Cartpage.dart';
import 'package:ecommerce_app/Totalpage.dart';
import 'package:ecommerce_app/deailpage.dart';
import 'package:ecommerce_app/homepage.dart';
import 'package:ecommerce_app/splashscreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const Electronic());
}

class Electronic extends StatelessWidget {
  const Electronic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/':(context)=>const Splashscreen(),
        '/home':(context)=> const Homepage(),
        '/detail':(context)=> const Detailpage(),
        '/cart':(context)=>const Cartpage(),
        '/total':(context)=>const Totalpage(),
      },
    );
  }
}
