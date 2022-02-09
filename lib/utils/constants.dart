// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

/// API
const String BASE_URL = 'https://api.github.com/';

double widthByPercent(BuildContext context, double percent) =>
    MediaQuery.of(context).size.width * (percent / 100);
double heightByPercent(BuildContext context, double percent) =>
    MediaQuery.of(context).size.height * (percent / 100);

void showAppSnackBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(msg),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
