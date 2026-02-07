import 'package:flutter/material.dart';

import '../core/widgets/layout/custom_bottom_nav_bar.dart';
import 'history/history_page.dart';
import 'products/presentation/pages/products_page.dart';
import 'settings/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainPage> {
  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pageIndex,
      builder: (context, value, _) {
        return Scaffold(
          body: IndexedStack(
            index: value,
            children: const [ProductsPage(), HistoryPage(), SettingsPage()],
          ),
          bottomNavigationBar: CustomBottomNavBar(pageIndex: pageIndex),
        );
      },
    );
  }
}
