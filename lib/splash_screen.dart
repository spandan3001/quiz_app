import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const id = '/splashScreen';

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  double _opacityLevel = 0.0;
  SplashScreenState() {
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _opacityLevel = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            //Theme.of(context).colorScheme.secondary, Theme.of(context).primaryColor
            colors: [Colors.white10, Colors.white10],
            begin: FractionalOffset(0, 0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: AnimatedOpacity(
          opacity: _opacityLevel,
          duration: const Duration(milliseconds: 500),
          child: Center(
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 2.0,
                    offset: const Offset(5.0, 3.0),
                    spreadRadius: 2.0,
                  )
                ],
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/quiz.png',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
