import 'package:flutter/material.dart';
import 'package:onboarding/modules/onboarding/onboarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Onboarding",
      home: OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
