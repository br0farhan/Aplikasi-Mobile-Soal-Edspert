import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_soal/view/constants/R/colors/colors.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';

class LoginButtonApple extends StatelessWidget {
  const LoginButtonApple({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: R.colors.blackColor),
          color: R.colors.blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(R.assets.icApple),
            const SizedBox(
              width: 12,
            ),
            Text(
              "Masuk dengan Google",
              style: GoogleFonts.poppins(
                color: R.colors.whiteColor,
                  fontSize: 17, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}