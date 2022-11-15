import 'package:flutter/material.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';
import 'package:konsultasi_soal/view/constants/view/main/latihan%20soal/home_page.dart';
import 'package:konsultasi_soal/view/constants/view/main/latihan%20soal/paket_soal_page.dart';

class MapelPage extends StatelessWidget {
  const MapelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pilih mate pelajaran"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaketSoalPage()));
            },
            child: Mapel(
                image: Image.asset(R.assets.icDna),
                jumlahLatihan: "0 / 50 Paket latihan soal",
                judulPelajaran: "Atom"),
          ),
        ));
  }
}
