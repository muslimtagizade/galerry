import 'package:flutter/material.dart';
import 'package:test_photo/theme/my_colors.dart';

class SearchWidget extends StatelessWidget {
  final Size size;
  final TextEditingController controller;
  const SearchWidget({Key key, this.size, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: MyColors.dirtyWhite.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              Icons.search,
              color: MyColors.black.withOpacity(0.4),
            ),
          ),
          Container(
            width: size.width - 100,
            height: 36,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              style: TextStyle(
                color: MyColors.dirtyWhite.withOpacity(0.12),
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 12),
                border: InputBorder.none,
                hintText: "Search",
                hintStyle:
                    TextStyle(color: MyColors.dirtyWhite.withOpacity(0.4)),
              ),
              controller: controller,
            ),
          ),
          Icon(
            Icons.keyboard_voice,
            color: MyColors.black.withOpacity(0.4),
          )
        ]),
      ),
    );
  }
}
