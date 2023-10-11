import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';

abstract class Styles {
  static var logoTextSyle = const TextStyle(
    fontSize: 24,
    fontFamily: kArvoFamily,
  );
  static var styleText12 = const TextStyle(
    fontSize: 12,
    color: Color(
      0xff777E99,
    ),
  );
  static var styleText14 = const TextStyle(
    fontSize: 14,
  );
  static var styleText16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static var styleText18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}
