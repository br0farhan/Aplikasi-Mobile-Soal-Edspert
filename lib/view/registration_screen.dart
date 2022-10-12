import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F3F5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                  color: R.colors.inputBgColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Yuk isi data diri",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                        color: R.colors.inputBgColor,
                        border: Border.all(color: const Color(0xffD6D6D6)),
                        borderRadius: BorderRadius.circular(8)),
                    child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "masukan email")),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Nama Lengkap",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                        color: R.colors.inputBgColor,
                        border: Border.all(color: const Color(0xffD6D6D6)),
                        borderRadius: BorderRadius.circular(8)),
                    child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "contoh : Farhan Martiyansyah")),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Text(
                    "Jenis Kelamin",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 28,
                        width: 138,
                        decoration: BoxDecoration(
                            color: R.colors.inputBgColor,
                            border: Border.all(color: const Color(0xffD6D6D6)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "Laki-laki",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        height: 28,
                        width: 138,
                        decoration: BoxDecoration(
                            color: R.colors.inputBgColor,
                            border: Border.all(color: const Color(0xffD6D6D6)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "Perempuan",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Kelas",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                        color: R.colors.inputBgColor,
                        border: Border.all(color: const Color(0xffD6D6D6)),
                        borderRadius: BorderRadius.circular(8)),
                    child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Pilih Kelas")),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Nama sekolah",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                        color: R.colors.inputBgColor,
                        border: Border.all(color: const Color(0xffD6D6D6)),
                        borderRadius: BorderRadius.circular(8)),
                    child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "nama sekolah")),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 64,
                    decoration: BoxDecoration(
                        color: R.colors.primaryColor,
                        borderRadius: BorderRadius.circular(46)),
                    child: Center(
                      child: Text(
                        "Daftar",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: R.colors.inputBgColor),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
