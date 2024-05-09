import 'package:advancedtheme/provider/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../Widget/change_theme_button.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  // const ChangeThemeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
       value: themeProvider.isDarkMode,
      onChanged: (value) {
         final provider = Provider.of<ThemeProvider>(context, listen: false);
         provider.toggleTheme(value);
      },

    );
  }
}
