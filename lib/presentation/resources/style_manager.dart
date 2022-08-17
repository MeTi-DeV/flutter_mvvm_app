import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mvvm_app/presentation/resources/font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontfamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontfamily,
    fontWeight: fontWeight,
    color: color,
  );
}

//regular style
TextStyle? getRegularStyle(
    {double fontSize = FontSize.fontSize12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontfamily,
    FontWeightManager.regular,
    color,
  );
}

//light style
TextStyle? getLightStyle(
    {double fontSize = FontSize.fontSize12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontfamily,
    FontWeightManager.light,
    color,
  );
}

TextStyle? getMediumStyle(
    {double fontSize = FontSize.fontSize12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontfamily,
    FontWeightManager.medium,
    color,
  );
}

TextStyle? getSemiBoldStyle(
    {double fontSize = FontSize.fontSize12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontfamily,
    FontWeightManager.semiBold,
    color,
  );
}

TextStyle? getBoldStyle(
    {double fontSize = FontSize.fontSize12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontfamily,
    FontWeightManager.bold,
    color,
  );
}
