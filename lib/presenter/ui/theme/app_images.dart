import 'package:flutter/material.dart';

class AppImages {
  static Image logo = Image.asset(
    'assets/image/logo.png',
    alignment: Alignment.center,
    fit: BoxFit.contain,
    width: 48,
    height: 48,
  );

  static Image logoMasterclass = Image.asset(
    'assets/image/masterclass_logo.png',
    alignment: Alignment.center,
    fit: BoxFit.contain,
  );

  //// LIGHT

  static Image runningWhite = Image.asset(
    'assets/image/light/running.png',
    alignment: Alignment.center,
    fit: BoxFit.contain,
    height: 30,
    width: 25,
  );

  static Image moonLight = Image.asset(
    'assets/image/light/moon@3x.png',
    alignment: Alignment.center,
    fit: BoxFit.contain,
    width: 24,
    height: 19,
  );

  static Image gitHubLight = Image.asset(
    'assets/image/light/github.png',
    alignment: Alignment.center,
    fit: BoxFit.contain,
    width: 20,
    height: 20.51,
  );

  //// DARK
  static Image gitHubDark = Image.asset(
    'assets/image/dark/github@2x.png',
    alignment: Alignment.center,
    fit: BoxFit.contain,
    width: 20,
    height: 20.51,
  );

  static Image awesomeBlack = Image.asset(
    'assets/image/dark/running.png',
    alignment: Alignment.center,
    fit: BoxFit.contain,
  );
}
