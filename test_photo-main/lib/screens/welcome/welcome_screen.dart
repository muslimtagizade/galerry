import 'package:flutter/material.dart';
import 'package:test_photo/screens/sign_in/sign_in_screen.dart';
import 'package:test_photo/screens/sign_up/sign_up.dart';
import 'package:test_photo/theme/my_colors.dart';
import 'package:test_photo/theme/text_styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/logo.png"),
          const SizedBox(height: 40),
          Text(
            "Welcome!",
            style: TextStyles.welcomeStyle,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                color: MyColors.lightBlack,
                borderRadius: BorderRadius.circular(4),
              ),
              height: 36,
              width: size.width,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyles.welcomeStyle.copyWith(
                      fontSize: 14,
                      color: MyColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(width: 1),
              ),
              width: size.width,
              height: 36,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SignInScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "I already have an account",
                    style: TextStyles.welcomeStyle.copyWith(fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
