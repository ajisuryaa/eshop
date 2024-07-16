import 'package:eshop/views/category-screen.dart';
import 'package:eshop/views/community-screen.dart';
import 'package:eshop/views/dashboard-screen.dart';
import 'package:eshop/views/my-profile-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const Dashboard(),
      const CategoryScreen(titlePage: "카테고리"),
      const CommunityScreen(titlePage: "커뮤니티"),
      const ProfileScreen(titlePage: "마이페이지")
    ];

    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45,
              blurRadius: 3,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            elevation: 10,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            unselectedFontSize: 10,
            unselectedLabelStyle: const TextStyle(
                fontSize: 10,
                fontFamily: "NotoSansKR",
                fontWeight: FontWeight.bold),
            selectedLabelStyle: const TextStyle(
                fontSize: 10,
                fontFamily: "NotoSansKR",
                fontWeight: FontWeight.bold),
            selectedItemColor: Colors.black45,
            unselectedItemColor: const Color(0xFFD7D7D7),
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icon/home.svg",
                  color: _currentIndex == 0
                      ? Colors.black45
                      : const Color(0xFFD7D7D7),
                ),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icon/category.svg",
                  color: _currentIndex == 1
                      ? Colors.black45
                      : const Color(0xFFD7D7D7),
                ),
                label: '카테고리',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icon/community.svg",
                  color: _currentIndex == 2
                      ? Colors.black45
                      : const Color(0xFFD7D7D7),
                ),
                label: '커뮤니티',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icon/profile.svg",
                  color: _currentIndex == 3
                      ? Colors.black45
                      : const Color(0xFFD7D7D7),
                ),
                label: '마이페이지',
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
