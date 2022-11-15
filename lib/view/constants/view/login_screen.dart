import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';
import 'package:konsultasi_soal/view/constants/view/registration_screen.dart';
import 'package:konsultasi_soal/view/constants/view/widget/Login_button_Apple.dart';
import 'package:konsultasi_soal/view/constants/view/widget/Login_button_Google.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.bgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 49,
          ),
          Text(
            "Login",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const SizedBox(
            height: 39,
          ),
          Center(
            child: Image.asset(R.assets.imgLogin),
          ),
          const SizedBox(
            height: 65,
          ),
          Center(
            child: Text(
              "Selamat Datang",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 22),
            ),
          ),
          Center(
            child: Text(
              "Selamat Datang di Aplikasi Widya Edu Aplikasi Latihan dan Konsultasi Soal",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color(0xff6A7483)),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          const LoginButtonGoogle(),
          const SizedBox(
            height: 25,
          ),
          const LoginButtonApple(),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrationScreen())),
                child:  Text("Daftar", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: R.colors.errorColor
                ),)),
          ),
          const SizedBox(
            height: 25,
          ),
        ]),
      ),
    );
  }
}
