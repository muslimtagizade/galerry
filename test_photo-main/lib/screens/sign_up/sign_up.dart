import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_photo/components/app_bar_components.dart';
import 'package:test_photo/components/text_field_component.dart';
import 'package:test_photo/data/network/server_api.dart';
import 'package:test_photo/screens/nav_bar/nav_bar_screen.dart';
import 'package:test_photo/screens/sign_in/sign_in_screen.dart';
import 'package:test_photo/theme/my_colors.dart';
import 'package:test_photo/theme/text_styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _phoneController = TextEditingController();
    TextEditingController _fullNameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _userNameController = TextEditingController();
    TextEditingController _birthDayController = TextEditingController();
    TextEditingController _confirmPasswordDayController =
        TextEditingController();

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBarComponents(),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          width: size.width,
          height: size.height,
          child: ListView(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Sign Up",
                    style: TextStyles.welcomeStyle.copyWith(fontSize: 30),
                  ),
                ]),
                const SizedBox(height: 57),
                TextFieldComponent(
                  icon: SvgPicture.asset("assets/images/user.svg"),
                  hintText: "User Name",
                  controller: _userNameController,
                ),
                const SizedBox(height: 29),
                TextFieldComponent(
                  icon: SvgPicture.asset("assets/images/calendar.svg"),
                  hintText: "Bithday",
                  controller: _birthDayController,
                ),
                const SizedBox(height: 29),
                TextFieldComponent(
                  icon: SvgPicture.asset("assets/images/email.svg"),
                  hintText: "Email",
                  controller: _emailController,
                ),
                const SizedBox(height: 29),
                TextFieldComponent(
                  icon: Icon(
                    Icons.phone,
                    color: MyColors.almostWhite,
                  ),
                  hintText: "Phone",
                  controller: _phoneController,
                ),
                const SizedBox(height: 29),
                TextFieldComponent(
                  icon: null,
                  hintText: "full name",
                  controller: _fullNameController,
                ),
                const SizedBox(height: 29),
                TextFieldComponent(
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: MyColors.almostWhite,
                  ),
                  hintText: "Password",
                  controller: _passwordController,
                ),
                const SizedBox(height: 29),
                TextFieldComponent(
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: MyColors.almostWhite,
                  ),
                  hintText: "Confirm password",
                  controller: _confirmPasswordDayController,
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    if (_passwordController.text.length > 5 &&
                        _userNameController.text.isNotEmpty &&
                        _fullNameController.text.isNotEmpty &&
                        _phoneController.text.isNotEmpty &&
                        _emailController.text.isNotEmpty &&
                        _confirmPasswordDayController.text ==
                            _passwordController.text) {
                      ServerApi.internal().signIn(
                          password: _passwordController.text,
                          userName: _userNameController.text,
                          fullname: _fullNameController.text,
                          birthDay: _birthDayController.text,
                          email: _emailController.text,
                          phone: _phoneController.text);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => NavBarScreen(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: MyColors.lightBlack,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    height: 36,
                    width: 120,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => NavBarScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyles.welcomeStyle.copyWith(
                            fontSize: 17,
                            color: MyColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SignInScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyles.style,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
