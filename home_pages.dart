import 'package:flutter/material.dart';
import 'package:utswipal/pages/menu_pages.dart';
import 'package:utswipal/pages/musik_pages.dart';
import 'package:utswipal/pages/person_pages.dart';
import 'package:utswipal/pages/user_pages.dart';
import 'package:utswipal/pages/search_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    BerandaPage(),
    MusicPlayer(),
    SearchMenuApp(),
    User(),
    ProfileScreen(),
    


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 86, 95),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.music_note,
              color: Colors.red,
            ),
            icon: Icon(
              Icons.music_note,
              color: Colors.grey,
            ),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.search,
              color: Colors.red,
            ),
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.message,
              color: Colors.red,
            ),
            icon: Icon(
              Icons.message,
              color: Colors.grey,
            ),
            label: 'masage',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Person',
          ),
        ],
      ),
      body: _children[_selectedIndex]
    );
  }
}