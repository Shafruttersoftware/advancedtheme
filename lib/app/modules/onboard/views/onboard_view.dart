import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../Widget/change_theme_button.dart';
import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     final text = MediaQuery.of(context).platformBrightness == Brightness.dark ? 'DarkTheme': 'LightTheme';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('OnboardView'),
        centerTitle: true,
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body:  Center(
        child: Text(
          'OnboardView is working $text!',
          style: TextStyle(fontSize: 20,color: Theme.of(context). scaffoldBackgroundColor),
        ),
      ),
    );
  }
}
