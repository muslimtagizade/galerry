import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_photo/components/text_field_component.dart';
import 'package:test_photo/components/user_photo_component.dart';
import 'package:test_photo/theme/my_colors.dart';
import 'package:test_photo/theme/text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 65,
          leading: Padding(
            padding: const EdgeInsets.only(top: 18, left: 16),
            child: Text(
              "Cancel",
              style: TextStyles.cancelStyle,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18, right: 16),
              child: Text(
                "Save",
                style: TextStyles.saveStyle,
              ),
            ),
          ]),
      body: Container(
        height: size.height,
        width: size.width,
        child: ListView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              Container(
                width: size.width,
                child: Column(children: [
                  UserPhotoComponent(),
                  Text(
                    "Upload photo",
                    style: TextStyles.valueStyle,
                  ),
                ]),
              ),
              const SizedBox(height: 20),
              Text(
                "Personal data",
                style: TextStyles.titleSTyle,
              ),
              const SizedBox(height: 20),
              TextFieldComponent(
                controller: TextEditingController(),
                hintText: "User Name",
                icon: SvgPicture.asset("assets/images/user.svg"),
              ),
              const SizedBox(height: 29),
              TextFieldComponent(
                icon: SvgPicture.asset("assets/images/calendar.svg"),
                hintText: "Bithday",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 39),
              Text(
                "E-mail adress",
                style: TextStyles.titleSTyle,
              ),
              const SizedBox(height: 20),
              TextFieldComponent(
                icon: SvgPicture.asset("assets/images/email.svg"),
                hintText: "Email",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 39),
              Text(
                "Password",
                style: TextStyles.titleSTyle,
              ),
              const SizedBox(height: 20),
              TextFieldComponent(
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: MyColors.almostWhite,
                ),
                hintText: "Old Password",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 29),
              TextFieldComponent(
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: MyColors.almostWhite,
                ),
                hintText: "New Password",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 29),
              TextFieldComponent(
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: MyColors.almostWhite,
                ),
                hintText: "Confirm password",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 39),
              Row(children: [
                Text(
                  "You can ",
                  style: TextStyles.titleSTyle,
                ),
                Text(
                  "delete your account",
                  style: TextStyles.saveStyle
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ]),
              const SizedBox(height: 20),
              Text(
                "Sign out",
                style:
                    TextStyles.saveStyle.copyWith(fontWeight: FontWeight.w400),
              ),
            ]),
      ),
    );
  }
}
