import 'package:flutter/material.dart';
import 'package:test_photo/components/text_field_component.dart';
import 'package:test_photo/theme/my_colors.dart';
import 'package:test_photo/theme/text_styles.dart';

class AddImageScreen extends StatelessWidget {
  const AddImageScreen({Key key}) : super(key: key);

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
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18, right: 16),
              child: Text(
                "Add",
                style: TextStyles.saveStyle,
              ),
            )
          ]),
      body: Column(children: [
        Container(
          width: size.width,
          height: size.height / 2,
          child: Center(
            child: Image.asset(
              "assets/images/logo.png",
              width: size.width,
              height: size.height / 2,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextFieldComponent(
              icon: null,
              hintText: "Name",
              controller: TextEditingController(),
            ),
            const SizedBox(height: 10),
            TextFieldComponent(
              icon: null,
              hintText: "Description",
              controller: TextEditingController(),
            ),
          ]),
        )
      ]),
    );
  }
}
