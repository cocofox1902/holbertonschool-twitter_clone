import 'package:flutter/material.dart';
import 'package:twitter/screens/search_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/chats_screen.dart';

class BarMenu extends StatefulWidget {
  final PageController pageController;

  const BarMenu({Key? key, required this.pageController}) : super(key: key);

  @override
  State<BarMenu> createState() => _BarMenuState(pageController);
}

class _BarMenuState extends State<BarMenu> {
  final PageController pageController;

  _BarMenuState(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(Icons.home,
              color:
                  pageController.initialPage == 0 ? Colors.blue : Colors.grey),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.search,
              color:
                  pageController.initialPage == 1 ? Colors.blue : Colors.grey),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications,
              color:
                  pageController.initialPage == 2 ? Colors.blue : Colors.grey),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NotificationsScreen()),
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.mail,
              color:
                  pageController.initialPage == 3 ? Colors.blue : Colors.grey),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatsScreen()),
            );
          },
        ),
      ],
    );
  }
}
