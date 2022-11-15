import 'package:flutter/material.dart';
import 'package:konsultasi_soal/view/constants/R/r.dart';
import 'package:konsultasi_soal/view/constants/view/main/diskusi/chat_screen.dart';
import 'package:konsultasi_soal/view/constants/view/main/latihan%20soal/home_page.dart';
import 'package:konsultasi_soal/view/constants/view/main/profile/profile_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static String route = "mainPage";
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static final _pc = PageController();
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_task_sharp),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ChatScreen()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: navigationBar(),
      body: PageView(
        controller: _pc,
        physics: NeverScrollableScrollPhysics(),
        children: [HomePage(), ProfilePage()],
      ),
    );
  }

  Container navigationBar() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: R.colors.whiteColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 20, color: R.colors.blackColor.withOpacity(0.06))
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  _index = 0;
                  _pc.animateToPage(_index,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.bounceOut);
                },
                child: Container(
                  child: Column(
                    children: [
                      Image.asset(
                        R.assets.icHome,
                        height: 20,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Home")
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  _index = 1;
                  _pc.animateToPage(_index,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.bounceOut);
                },
                child: Container(
                  child: Column(
                    children: [
                      Opacity(
                          opacity: 0,
                          child: Image.asset(R.assets.icHome, height: 20)),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text("Diskusi Soal")
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: InkWell(
                onTap: () {
                  _index = 2;
                  _pc.animateToPage(_index,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.bounceOut);
                },
                child: Container(
                  child: Column(
                    children: const [
                      Icon(Icons.person),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Profile")
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
