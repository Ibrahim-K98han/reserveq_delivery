import 'package:flutter/material.dart';

import '../utils/constraints.dart';
import '../utils/utils.dart';
import 'custom_text.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
    this.height = 60.0,
    this.visibleBackButton = true,
    //this.bottom = const SizedBox(),
  });
  final double height;
  final String title;
  final bool visibleBackButton;
  //final Widget bottom;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: whiteColor,
      automaticallyImplyLeading: visibleBackButton,
      toolbarHeight: Utils.vSize(height),
      pinned: true,
      title: CustomText(
        text: title,
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
      ),
      //bottom: bottom as PreferredSizeWidget,
    );
  }
}
