import 'package:flutter/material.dart';
import 'package:test_photo/theme/text_styles.dart';

class AppBarComponents extends StatelessWidget {
  const AppBarComponents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Cancel",
            style: TextStyles.cancelStyle,
          ),
        ),
      ),
    );
  }
}
