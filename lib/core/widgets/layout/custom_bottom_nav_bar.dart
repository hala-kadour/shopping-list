import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key, required this.pageIndex});
  final ValueNotifier<int> pageIndex;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.pageIndex,
      builder: (context, pageValue, _) {
        return Container(
          decoration: const BoxDecoration(color: AppColors.secondaryColor),
          child: SafeArea(
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              selectedItemColor: AppColors.primaryColor,
              currentIndex: pageValue,
              onTap: (value) {
                switch (value) {
                  case 0:
                    {
                      if (pageValue == 0) {
                        break;
                      } else {
                        widget.pageIndex.value = 0;
                      }
                    }
                    break;
                  case 1:
                    {
                      if (pageValue == 1) {
                        break;
                      } else {
                        widget.pageIndex.value = 1;
                      }
                    }
                    break;
                  case 2:
                    {
                      if (pageValue == 2) {
                        break;
                      } else {
                        widget.pageIndex.value = 2;
                      }
                    }
                    break;
                }
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.grid_view_sharp,
                    color: pageValue == 0
                        ? AppColors.primaryColor
                        : AppColors.textSecondary,
                  ),
                  label: "Grid",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.history,
                    color: pageValue == 1
                        ? AppColors.primaryColor
                        : AppColors.textSecondary,
                  ),
                  label: "History",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: pageValue == 2
                        ? AppColors.primaryColor
                        : AppColors.textSecondary,
                  ),
                  label: "Settings",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
