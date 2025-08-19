import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import 'main_controller.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final MainController controller;

  const MyBottomNavigationBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      initialData: 0,
      stream: controller.naveListener.stream,
      builder: (context, snapshot) {
        final selectedIndex = snapshot.data ?? 0;

        return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          color: Colors.white,
          elevation: 8,
          child: Container(
            height: Platform.isAndroid ? 100 : 110,
            padding:  EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Side Icons
                Row(
                  children: [
                    _navButton(
                        KImages.home, KImages.homeActive, 0, selectedIndex),
                    const SizedBox(width: 40),
                    _navButton(
                        KImages.inbox, KImages.inboxActive, 1, selectedIndex),
                  ],
                ),
                // Right Side Icons
                Row(
                  children: [
                    _navButton(KImages.transaction, KImages.transactionActive,
                        3, selectedIndex),
                    const SizedBox(width: 40),
                    _navButton(KImages.profile, KImages.profileActive, 4,
                        selectedIndex),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Widget _navIcon(String path, {Color? iconColor}) => Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 8.0),
  //       child: SvgPicture.asset(
  //         path,
  //         color: iconColor,
  //       ),
  //     );

  Widget _navButton(
      String icon, String activeIcon, int index, int selectedIndex) {
    return GestureDetector(
      onTap: () => controller.changeNav(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: SvgPicture.asset(
          selectedIndex == index ? activeIcon : icon,
          height: 24,
        ),
      ),
    );
  }
}
