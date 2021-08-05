import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_photo/screens/nav_bar/nav_bar_items/profile/widgets/grid_item_widget.dart';
import 'package:test_photo/screens/nav_bar/nav_bar_items/profile/widgets/user_info_widget.dart';
import 'package:test_photo/screens/settings/settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(actions: [
        ElevatedButton(
          child: SvgPicture.asset("assets/images/Icon.svg"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => SettingsScreen(),
              ),
            );
          },
        ),
      ]),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: UserInfoWidget(),
        ),
        Container(
          width: size.width,
          height: size.height-350,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            itemCount: 999,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, index) {
              return GridItemWidget();
            },
          ),
        ),
      ]),
    );
  }
}
