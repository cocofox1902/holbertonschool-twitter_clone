import 'package:flutter/material.dart';
import 'package:twitter/widgets/side_bar_menu.dart';

import '../widgets/bottom_bar_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const SideBarMenu(),
      bottomNavigationBar: BarMenu(
        pageController: PageController(initialPage: 0),
      ),
    );
  }
}
