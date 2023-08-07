import 'package:flutter/material.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';
import 'package:twitter/assets/dummy_data.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';
// import 'package:twitter/widgets/post_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Builder(
            builder: (context) => const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://via.placeholder.com/150',
              ),
            ),
          ),
        ),
        title: const SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 94, 94, 94),
              ),
              filled: true,
              fillColor: Color.fromARGB(255, 239, 239, 239),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: Colors.blue,
          ),
        ],
        backgroundColor: Colors.grey[50],
        shadowColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          final user = userList[index];
          return UsersSearchResultsWidget(
            name: user['name'],
            username: user['username'],
            bio: user['bio'],
            imgUrl: user['imgUrl'],
            isVerified: user['isVerified'],
          );
        },
      ),
      // body: const PostWidget(),
      bottomNavigationBar: BarMenu(
        pageController: PageController(initialPage: 1),
      ),
    );
  }
}
