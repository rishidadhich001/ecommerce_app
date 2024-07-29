import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed('/home');
            });
          },
          child: Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/img/rd.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}
