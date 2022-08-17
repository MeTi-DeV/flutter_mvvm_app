import 'package:flutter/material.dart';
import 'package:mvvm_app/presentation/resources/color_manager.dart';
import 'package:mvvm_app/presentation/resources/font_manager.dart';
import 'package:mvvm_app/presentation/resources/style_manager.dart';
import 'package:mvvm_app/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    splashColor: ColorManager.primaryOpacity70,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    accentColor: ColorManager.grey,
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.fontSize16,
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.fontSize16,
      ),
      subtitle1: getMediumStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.fontSize14,
      ),
      caption: getRegularStyle(color: ColorManager.grey1),
      bodyText1: getRegularStyle(color: ColorManager.grey),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.all(
        AppPadding.p8,
      ),
      //hit style
      hintStyle: TextStyle(
          color: Color(0xFF707070),
          fontSize: FontSize.fontSize12,
          fontFamily: FontConstant.fontfamily,
          fontWeight: FontWeightManager.regular),
      labelStyle: TextStyle(
          color: Color(0xFF525252),
          fontSize: FontSize.fontSize12,
          fontFamily: FontConstant.fontfamily,
          fontWeight: FontWeightManager.medium),
      errorStyle: TextStyle(
          color: Color(0xFFe61f34),
          fontSize: FontSize.fontSize12,
          fontFamily: FontConstant.fontfamily,
          fontWeight: FontWeightManager.regular),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide: BorderSide(
          color: Color(0xff737477),
          width: AppSize.s1_5,
        
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide: BorderSide(
          color: Color(0xffED9728),
          width: AppSize.s1_5,
        
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide: BorderSide(
          color: Color(0xffe61f34),
          width: AppSize.s1_5,
        
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide: BorderSide(
          color: Color(0xffED9728),
          width: AppSize.s1_5,
        
        ),
      ),
    ),
  );
}
