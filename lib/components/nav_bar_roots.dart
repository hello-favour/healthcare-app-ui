import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/screens/home_screen.dart';
import 'package:medical_health_careapp_ui/screens/schedule_screen.dart';
import 'package:medical_health_careapp_ui/screens/settings_screen.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedScreenIndex = 0;
  final _screens = [
    HomeScreen(),
    Container(),
    const ScheduleScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          selectedItemColor: AppColors.primaryColors,
          unselectedItemColor: Colors.black54,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedScreenIndex,
          onTap: (index) {
            setState(() {
              _selectedScreenIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: "Message",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Schedule"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
