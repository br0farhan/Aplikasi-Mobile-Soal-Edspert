import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';
import 'package:konsultasi_soal/view/registration_screen.dart';

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
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationScreen()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: R.colors.primaryColor),
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(R.assets.icGoogle),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Masuk dengan Google",
                    style: GoogleFonts.poppins(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.black,
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
                  "Masuk dengan Apple ID",
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ]),
      ),
    );
  }
}
