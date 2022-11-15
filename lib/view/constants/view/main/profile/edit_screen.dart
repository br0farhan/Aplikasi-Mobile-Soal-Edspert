import 'package:flutter/material.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: R.colors.backgroundColor2,
        title: const Text("Edit Akun"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 26,
            ),
            const Text(
              "Data Diri",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(color: R.colors.labelTextColor),
                  ),
                  const TextField(),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(color: R.colors.labelTextColor),
                  ),
                  const TextField(),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jenis Kelamin",
                    style: TextStyle(color: R.colors.labelTextColor),
                  ),
                  const TextField(),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kelas",
                    style: TextStyle(color: R.colors.labelTextColor),
                  ),
                  const TextField(),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sekolah",
                    style: TextStyle(color: R.colors.labelTextColor),
                  ),
                  const TextField(),
                ],
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 335,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: R.colors.backgroundColor2),
                  child: Center(
                    child: Text(
                      "Perbarui Data",
                      style: TextStyle(
                          color: R.colors.whiteColor,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
