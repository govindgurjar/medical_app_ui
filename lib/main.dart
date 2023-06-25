import 'package:flutter/material.dart';
import 'package:medical_app_ui/home_page.dart';
import 'package:medical_app_ui/notification_page.dart';
import 'package:medical_app_ui/profile_page.dart';
import 'package:medical_app_ui/schedule_page.dart';
import 'package:medical_app_ui/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final screens = [
    FirstPage(),
    SchedulePage(),
    SearchPage(),
    Notification_Page(),
    Profile_Page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: currentPage == 0
                ? Icon(
                    Icons.home,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 1
                ? Icon(
                    Icons.calendar_month,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.grey,
                  ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 2
                ? Icon(
                    Icons.search,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.search_outlined,
                    color: Colors.grey,
                  ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 3
                ? Icon(
                    Icons.notifications,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.notifications_outlined,
                    color: Colors.grey,
                  ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 4
                ? Icon(
                    Icons.person,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.person_outlined,
                    color: Colors.grey,
                  ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
