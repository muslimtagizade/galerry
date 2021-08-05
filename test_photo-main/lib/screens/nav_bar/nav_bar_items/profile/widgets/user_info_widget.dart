import 'package:flutter/material.dart';
import 'package:test_photo/components/user_photo_component.dart';
import 'package:test_photo/theme/my_colors.dart';
import 'package:test_photo/theme/text_styles.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      UserPhotoComponent(),
      Text(
        "User Name",
        style: TextStyles.style,
      ),
      const SizedBox(height: 8),
      Text(
        "20.01.2000",
        style: TextStyles.valueStyle,
      ),
      const SizedBox(height: 27),
      Row(children: [
        Text(
          "loaded:",
          style: TextStyles.valueStyle.copyWith(color: MyColors.black),
        ),
        Text(
          "+999",
          style: TextStyles.valueStyle.copyWith(),
        ),
      ]),
    ]);
  }
}
