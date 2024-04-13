import 'package:aviz/Features/Home/view/home_screen.dart';
import 'package:aviz/Features/Profile/view/profile_screen.dart';
import 'package:aviz/constans/colors/color.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}
//should fix size and font from figma

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: [
            HomeScreen(),
            ProfileScreen(),
            ProfileScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedLabelStyle: const TextStyle(
            fontFamily: 'sm',
            fontSize: 14.0,
          ),
          selectedItemColor: CustomColors.primaryColor1,
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'sm',
            fontSize: 14.0,
            color: Colors.black,
          ),
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/inactive_home_icon.png'),
              activeIcon: Image.asset('assets/images/active_home_icon.png'),
              label: 'آویزآگهی',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/inactive_search_icon.png'),
              activeIcon: Image.asset('assets/images/active_search_icon.png'),
              label: 'جستجو',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/inactive_add_icon.png'),
              activeIcon: Image.asset('assets/images/active_add_icon.png'),
              label: 'افزودن آویز',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/inactive_setting_icon.png'),
              activeIcon: Image.asset('assets/images/active_setting_icon.png'),
              label: 'آویز من',
            ),
          ],
        ),
      ),
    );
  }
}
