import 'package:flutter/material.dart';

double responsiveSizeScreen(BuildContext context, {double scaleFactor = 0.5}) {
  final screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth >= 1920) {
    return screenWidth * scaleFactor * 0.6;
  } else if (screenWidth >= 1280) {
    return screenWidth * scaleFactor * 0.7;
  } else if (screenWidth >= 960) {
    return screenWidth * scaleFactor * 0.85;
  } else if (screenWidth >= 600) {
    return screenWidth * scaleFactor * 1.0;
  } else {
    return screenWidth * scaleFactor * 1.5;
  }
}
