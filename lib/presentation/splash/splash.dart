import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvm_app/presentation/resources/assets_manager.dart';
import 'package:mvvm_app/presentation/resources/color_manager.dart';
import 'package:mvvm_app/presentation/resources/route_manager.dart';

class SplashView extends StatefulWidget {
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
    });
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Image(image: AssetImage(ImageAssets.splashLogo)),
      ),
    );
  }
}
