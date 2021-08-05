import 'package:flutter/material.dart';

class ErrorComponent extends StatelessWidget {
  final String errorMessage;
  const ErrorComponent({this.errorMessage});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorMessage),
    );
  }
}
