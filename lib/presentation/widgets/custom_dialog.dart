import 'package:flutter/material.dart';

import '../utils/constraints.dart';
import '../utils/utils.dart';
import 'custom_image.dart';
import 'custom_text.dart';

class FeedBackDialog extends StatelessWidget {
  const FeedBackDialog({
    Key? key,
    required this.image,
    required this.message,
    required this.child,
    this.height = 230.0,
    this.radius = 10.0,
  }) : super(key: key);
  final String image;
  final String message;
  final Widget child;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 4.0,
      insetPadding: Utils.all(),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: Container(
       decoration: BoxDecoration(
         color: const Color(0xFFFFFFFF),
         borderRadius: BorderRadius.circular(14),
       ),
        width: Utils.hSize(320.0),
        height: Utils.vSize(height),
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -80.0,
              child: Container(
                padding: Utils.all(value: 24.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor.withOpacity(0.2),
                ),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CustomImage(
                        path: image,
                        height: 40.0,
                        width: 45.0,
                        color: whiteColor),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 35.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Utils.verticalSpace(20),
                    CustomText(
                      text: message,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0,
                      textAlign: TextAlign.center,
                      color: const Color(0xFF000929),
                    ),
                    Utils.verticalSpace(10),
                    child,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
