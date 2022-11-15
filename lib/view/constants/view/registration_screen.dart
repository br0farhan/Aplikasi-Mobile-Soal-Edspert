import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';
import 'package:konsultasi_soal/view/constants/view/main/diskusi/chat_screen.dart';
import 'package:konsultasi_soal/view/constants/view/main_page.dart';
import 'package:konsultasi_soal/view/constants/view/widget/Login_button_Daftar.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

enum Gender { lakilaki, perempuan }

class _RegistrationScreenState extends State<RegistrationScreen> {
  String gender = "laki-laki";
  List<String> classSlta = ["10", "11", "12"];
  String selectedSlta = "10";
  ontapGender(Gender gendeInput) {
    if (gendeInput == Gender.lakilaki) {
      gender = "laki-laki";
    } else {
      gender = "perempuan";
    }
    setState(() {});
  }

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
                      InkWell(
                        onTap: () {
                          ontapGender(Gender.lakilaki);
                        },
                        child: Container(
                          height: 28,
                          width: 138,
                          decoration: BoxDecoration(
                              color: R.colors.inputBgColor,
                              border: Border.all(
                                  color: gender == "laki-laki"
                                      ? R.colors.primaryColor
                                      : const Color(0xffFCFCFC)),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "Laki-laki",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => ontapGender(Gender.perempuan),
                        child: Container(
                          height: 28,
                          width: 138,
                          decoration: BoxDecoration(
                              color: R.colors.inputBgColor,
                              border: Border.all(
                                  color: gender == "perempuan"
                                      ? R.colors.primaryColor
                                      : const Color(0xffFCFCFC)),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "Perempuan",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
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
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: R.colors.inputBgColor,
                          border: Border.all(color: const Color(0xffD6D6D6)),
                          borderRadius: BorderRadius.circular(8)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: selectedSlta,
                            items: classSlta
                                .map((e) => DropdownMenuItem<String>(
                                      child: Text(e),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (String? val) {
                              selectedSlta = val!;
                              setState(() {});
                            }),
                      )),
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
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const MainPage()),
                      ModalRoute.withName('mainPage'));
                },
                child: const Center(child: Text("Daftar")))
          ],
        ),
      ),
    );
  }
}
