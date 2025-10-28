import 'package:flutter/material.dart';

import 'view/desktop_view/home_page_desktop/home_desktop.dart';
import 'utils/theme/custom_theme.dart';
import 'view/responsive/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customTheme,
      debugShowCheckedModeBanner: false,
      home: const ResponsiveUiBuilder(),
    );
  }
}
