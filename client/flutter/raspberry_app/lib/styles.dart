import 'package:flutter/material.dart';

Color bgColor = Color.fromARGB(255, 21, 25, 28);
Color bgLight = const Color(0xff212529);
Color heartColor = const Color(0xffF23064);
Color secondaryColor = const Color(0xff1B8EF2);

class Styles {
  static const double padding = 20;
  static const double avatarRadius = 15;

  static Color textGray = const Color(0xffC8BDBB);
  static Color bgWhite = const Color(0xffFEFEFE);
  static Color primaryColor = const Color(0xff48201A);
  static Color secondaryColor = const Color(0xffFEF3EC);
  static Color neutralColor = HexColor.fromHex("111315");

  static Color gray100 = HexColor.fromHex("828282");
  static Color gray200 = HexColor.fromHex("EEEFF1");

  static Color primary = HexColor.fromHex("25283D");

  static TextStyle heading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );

  static TextStyle subHeading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: textGray,
  );

  static TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: primaryColor,
  );
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write('ff');
    }
    buffer.write(hexString.replaceAll('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
