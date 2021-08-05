import 'package:flutter/material.dart';
import 'package:test_photo/screens/nav_bar/nav_bar_items/home/widgets/search_widget.dart';
import 'package:test_photo/theme/my_colors.dart';
import 'package:test_photo/theme/text_styles.dart';

import 'widgets/new_screen_widget.dart';
import 'widgets/popular_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: SearchWidget(
            size: size,
            controller: TextEditingController(),
          ),
        ),
        body: Column(children: [
          TabBar(
              physics: BouncingScrollPhysics(),
              onTap: onItemTapped,
              indicatorWeight: 2,
              indicatorColor: MyColors.lightPink,
              tabs: [
                Tab(
                  child: Text(
                    "New",
                    style: TextStyles.style,
                  ),
                ),
                Tab(
                  child: Text(
                    "Popular",
                    style: TextStyles.style,
                  ),
                ),
              ]),
          IndexedStack(index: _selectedIndex, children: [
            NewScreenWidget(),
            PopularScreenWidget(),
          ]),
        ]),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
