import 'package:flutter/material.dart';
import 'package:test_photo/theme/my_colors.dart';

class UserPhotoComponent extends StatelessWidget {
  const UserPhotoComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 21, bottom: 10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: MyColors.almostWhite,
        ),
        borderRadius: BorderRadius.circular(150),
      ),
      child: Center(
        child: Icon(
          Icons.photo_camera,
          size: 52,
          color: MyColors.almostWhite,
        ),
      ),
    );
  }
}
