import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_soal/view/constants/R/colors/colors.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';
import 'package:flutter/material.dart';

class PaketSoalPage extends StatefulWidget {
  const PaketSoalPage({Key? key}) : super(key: key);

  @override
  State<PaketSoalPage> createState() => _PaketSoalPageState();
}

class _PaketSoalPageState extends State<PaketSoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paket soal "),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Pilih paket soal",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 3 / 2,
                  children: const  [
                    PaketSoalWidget(),
                    PaketSoalWidget(),
                    PaketSoalWidget()
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class PaketSoalWidget extends StatelessWidget {
  const PaketSoalWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: R.colors.whiteColor, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: R.colors.inputBgColor),
            padding: EdgeInsets.all(12),
            child: Image.asset(
              R.assets.icNote,
              width: 14,
            ),
          ),
          Text(
            "Aljabar",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
          Text(
            "0 / 0 Paket soal",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 9,
                color: R.colors.labelTextColor),
          )
        ],
      ),
    );
  }
}
