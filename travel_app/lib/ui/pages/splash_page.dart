// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:travel_app/ui/pages/get_started_page.dart';
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 5), (){ 
      Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (context) => GetStartedPage(),
        ),
      );
    });
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_plane.png',))
              ),
            ),
            Text('AIRPLANE',
            style: whiteTextStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
              letterSpacing: 10 //letter spacing in Figma 31.5% * 32 = 10.08
            ),)
          ],
        ),
      ),
      
    );
  }
}