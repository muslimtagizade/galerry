import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_photo/components/app_bar_components.dart';
import 'package:test_photo/components/text_field_component.dart';
import 'package:test_photo/screens/nav_bar/nav_bar_screen.dart';
import 'package:test_photo/theme/my_colors.dart';
import 'package:test_photo/theme/text_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBarComponents(),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Sign In",
              style: TextStyles.welcomeStyle.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 57),
            TextFieldComponent(
              icon: SvgPicture.asset("assets/images/email.svg"),
              hintText: "Email",
              controller: _emailController,
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
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                "Forgot login or password?",
                style: TextStyles.cancelStyle.copyWith(fontSize: 13),
              ),
            ]),
            const SizedBox(height: 59),
            ElevatedButton(
              onPressed: () {},
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
                      "Sign In",
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
              onPressed: () {},
              child: Text(
                "Sign Up",
                style: TextStyles.style,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
