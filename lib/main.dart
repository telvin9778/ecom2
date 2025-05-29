import 'package:device_preview/device_preview.dart';
import 'package:ecomers2/view/splash_screen.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Splash Screen Demo',
      home: SplashScreen(),
    );
  }
}
