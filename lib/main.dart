import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/features/main_page.dart';

import 'core/theme/app_theme.dart';
import 'features/products/presentation/provider/product_provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.getAppDarkTheme(),
      home: const MainPage(),
    );
  }
}
