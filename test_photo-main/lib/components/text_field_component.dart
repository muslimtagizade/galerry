import 'package:flutter/material.dart';
import 'package:test_photo/theme/my_colors.dart';

class TextFieldComponent extends StatelessWidget {
  final Widget icon;
  final TextEditingController controller;
  final String hintText;
  const TextFieldComponent({Key key, this.icon, this.controller, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          width: 1,
          color: MyColors.almostWhite,
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: icon,
          suffixIconConstraints: BoxConstraints(
            minHeight: 12.96,
            maxWidth: 20.43,
            maxHeight: 18.91,
          ),
        ),
      ),
    );
  }
}
