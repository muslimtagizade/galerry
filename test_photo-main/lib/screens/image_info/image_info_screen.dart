import 'package:flutter/material.dart';
import 'package:test_photo/theme/my_colors.dart';
import 'package:test_photo/theme/text_styles.dart';

class ImageInfoScreen extends StatelessWidget {
  const ImageInfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: MyColors.black,
            size: 15,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: size.width,
                height: size.height / 3,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 11),
              Text(
                "Name",
                style: TextStyles.style.copyWith(fontSize: 20),
              ),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "User Name",
                  style: TextStyles.valueStyle.copyWith(fontSize: 15),
                ),
                Text(
                  "20.01.2000",
                  style: TextStyles.valueStyle,
                ),
              ]),
              const SizedBox(height: 20),
              Text(
                "info",
                style: TextStyles.infoStyle,
              ),
            ]),
      ),
    );
  }
}
