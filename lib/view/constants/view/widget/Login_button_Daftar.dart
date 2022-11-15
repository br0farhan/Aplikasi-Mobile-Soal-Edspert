import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_soal/view/constants/R/colors/colors.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';

// ignore: must_be_immutable
class LoginButtonDaftar extends StatelessWidget {
  String? text;
  Color? color;
  Widget button;
  LoginButtonDaftar({
    this.text,
    this.color,
    required this.button,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "DAFTAR",
            style: GoogleFonts.poppins(
                color: R.colors.whiteColor,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          button
        ],
      ),
    );
  }
}
