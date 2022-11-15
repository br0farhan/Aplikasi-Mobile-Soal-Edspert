import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';
import 'package:konsultasi_soal/view/constants/view/main/profile/edit_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: R.colors.backgroundColor2,
        title: const Text("Akun Saya"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditScreen()));
              },
              child: Text(
                "Edit",
                style: TextStyle(color: R.colors.whiteColor),
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: R.colors.backgroundColor2,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Farhan Martiyansyah",
                          style: TextStyle(
                              color: R.colors.whiteColor, fontSize: 16),
                        ),
                        Text(
                          "Universitas Pakuan",
                          style: TextStyle(
                              color: R.colors.whiteColor, fontSize: 12),
                        )
                      ],
                    ),
                    Image.asset(R.assets.icAvatar)
                  ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _buildIdentitasDiri(),
          const SizedBox(
            height: 23,
          ),
          _buttonKeluar()
        ],
      ),
    );
  }

  Container _buttonKeluar() {
    return Container(
      height: 50,
      width: 335,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(color: R.colors.labelColor),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            R.assets.icLogout,
            width: 15,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            "Keluar",
            style: TextStyle(color: R.colors.errorColor),
          )
        ],
      ),
    );
  }

  Container _buildIdentitasDiri() {
    return Container(
      height: 345,
      width: 335,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: R.colors.labelColor)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Identitas Diri",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Lengkap",
                    style: GoogleFonts.poppins(color: R.colors.labelTextColor),
                  ),
                  Text(
                    "Farhan Martiyansyah",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: GoogleFonts.poppins(color: R.colors.labelTextColor),
                  ),
                  Text(
                    "far.martiyansyah@gmail.com",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jenis Kelamin",
                    style: GoogleFonts.poppins(color: R.colors.labelTextColor),
                  ),
                  Text(
                    "Laki-laki",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kelas",
                    style: GoogleFonts.poppins(color: R.colors.labelTextColor),
                  ),
                  Text(
                    "Semester 8",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sekolah",
                    style: GoogleFonts.poppins(color: R.colors.labelTextColor),
                  ),
                  Text(
                    "Universitas Pakuan",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
