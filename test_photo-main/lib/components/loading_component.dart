import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:test_photo/theme/my_colors.dart';

class LoadingComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 25.0,
          width: 25.0,
          child: SpinKitDualRing(
            color: MyColors.white,
            size: 100,
          ),
        ),
      ),
    );
  }
}
