import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';
import 'package:konsultasi_soal/view/constants/view/main/latihan%20soal/mapel_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildUserHomeProfile(),
              const SizedBox(
                height: 11,
              ),
              _buildTopBanner(),
              const SizedBox(
                height: 25,
              ),
              _buildListpelajaran(),
              const SizedBox(
                height: 20,
              ),
              _buildbanner()
            ],
          ),
        ),
      ),
    );
  }

  Container _buildbanner() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Terbaru",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 16),
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.asset(R.assets.imgBanner),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }

  Padding _buildListpelajaran() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pilih Pelajaran",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapelPage()));
                },
                child: Text(
                  "Lihat semua",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: R.colors.primaryColor),
                ),
              )
            ],
          ),
          Mapel(
            image: Image.asset(
              R.assets.icDna,
            ),
            judulPelajaran: "DNA",
            jumlahLatihan: "0 / 50 Paket latihan soal",
          ),
          Mapel(
            image: Image.asset(
              R.assets.icAtom,
            ),
            judulPelajaran: "Atom",
            jumlahLatihan: "0 / 50 Paket latihan soal",
          ),
          Mapel(
            image: Image.asset(
              R.assets.icKimia,
            ),
            judulPelajaran: "Kimia",
            jumlahLatihan: "0 / 50 Paket latihan soal",
          )
        ],
      ),
    );
  }

  Container _buildTopBanner() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 147,
      width: double.infinity,
      decoration: BoxDecoration(
        color: R.colors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(children: [
        Text(
          "Mau kerjain\nlatihan soal\napa hari ini ?",
          style: GoogleFonts.poppins(
              color: R.colors.whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        Positioned(
            right: 0,
            child: Image.asset(
              R.assets.imgNotFound,
              width: MediaQuery.of(context).size.width * 0.45,
            ))
      ]),
    );
  }

  Padding _buildUserHomeProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hai Farhan",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
              Text(
                "Selamat datang",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Image.asset(
            R.assets.icAvatar,
            width: 35,
            height: 35,
          ),
        ],
      ),
    );
  }
}

class Mapel extends StatelessWidget {
  Image image;
  String judulPelajaran;
  String jumlahLatihan;
  Mapel(
      {Key? key,
      required this.image,
      required this.jumlahLatihan,
      required this.judulPelajaran})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 21),
      child: Row(
        children: [
          Container(
              height: 53,
              width: 53,
              padding: const EdgeInsets.all(13),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: image),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judulPelajaran,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 12),
                ),
                Text(
                  jumlahLatihan,
                  style: GoogleFonts.poppins(
                      color: R.colors.labelTextColor, fontSize: 12),
                ),
                Stack(
                  children: [
                    Container(
                      height: 5,
                      decoration: BoxDecoration(
                          color: R.colors.labelColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 5,
                      decoration: BoxDecoration(
                          color: R.colors.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width * 0.4,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
