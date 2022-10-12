import 'dart:async';

import 'package:flutter/material.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';
import 'package:konsultasi_soal/view/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false);
    });
    return Scaffold(
      backgroundColor: R.colors.primaryColor,
      body: Center(
        child: Image.asset(
          R.assets.imgEdspert,
          height: 30,
        ),
      ),
    );
  }
}
