import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_photo/screens/add_image/add_image_screen.dart';
import 'package:test_photo/screens/settings/settings_screen.dart';
import 'package:test_photo/screens/splash/splash_screen.dart';
import 'package:test_photo/screens/welcome/welcome_screen.dart';

import 'global_bloc/global_bloc.dart';
import 'screens/image_info/image_info_screen.dart';
import 'screens/nav_bar/nav_bar_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up.dart';
import 'theme/my_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery',
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: MyColors.black,
        )),
        appBarTheme: AppBarTheme(
          color: MyColors.white,
        ),
        scaffoldBackgroundColor: MyColors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            primary: Colors.transparent,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shadowColor: Colors.transparent,
          ),
        ),
      ),
      home: BlocProvider(
        create: (_) => GlobalBloc()..add(GlobalEvent.welcome()),
        child:  BlocConsumer<GlobalBloc, GlobalState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              splash: (_) => SplashScreen(),
              welcome: (_) => WelcomeScreen(),
              orElse: () {
                return Container();
              },
            );
          },
        ),
      ),
    );
  }
}
