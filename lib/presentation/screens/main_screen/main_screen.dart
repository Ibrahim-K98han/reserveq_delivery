import 'package:delivery_ui/presentation/utils/constraints.dart';
import 'package:delivery_ui/presentation/utils/k_images.dart';
import 'package:delivery_ui/presentation/widgets/custom_image.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../inbox/inbox_screen.dart';
import '../order/order_screen.dart';
import '../profile/profile_screen.dart';
import '../transaction/transaction_screen.dart';
import 'component/bottom_navigation_bar.dart';
import 'component/main_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MainController _controller = MainController();

  final List<Widget> _screens = const [
    HomeScreen(),
    InboxScreen(),
    OrderScreen(),
    TransactionScreen(),
    ProfileScreen(),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: StreamBuilder<int>(
        initialData: 0,
        stream: _controller.naveListener.stream,
        builder: (context, snapshot) {
          final currentIndex = snapshot.data ?? 0;
          return FloatingActionButton(
            onPressed: () => _controller.changeNav(2),
            backgroundColor: currentIndex == 2 ? primaryColor : blackColor,
            shape: const CircleBorder(),
            child: const CustomImage(path: KImages.chef),
          );
        },
      ),
      body: StreamBuilder<int>(
        initialData: 0,
        stream: _controller.naveListener.stream,
        builder: (context, AsyncSnapshot<int> snapshot) {
          int item = snapshot.data ?? 0;
          return _screens[item];
        },
      ),
      bottomNavigationBar: MyBottomNavigationBar(controller: _controller),
    );
  }
}
