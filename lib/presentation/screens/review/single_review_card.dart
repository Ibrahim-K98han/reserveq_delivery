import 'dart:ui';

import 'package:delivery_ui/presentation/widgets/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';

class SingleReviewCard extends StatelessWidget {
  const SingleReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: whiteColor,
            blurRadius: 2,
            blurStyle: BlurStyle.inner,
          ),
        ],
      ),
      child: Padding(
        padding: Utils.only(left: 14, right: 14, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: CustomText(
                    text: 'Chicken Skewers ',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // CustomImage(path: KImages.timeIcon),
                      CustomText(
                        text: '',
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Utils.verticalSpace(10),
            CustomText(
              text:
                  '“Excellent food.Menu is extensive and Definitely fine dining 😍😍”',
              fontWeight: FontWeight.w400,
              // color: Colors.grey.shade600,
              fontStyle: FontStyle.italic,
              fontSize: 12.sp,
              overflow: TextOverflow.ellipsis,
              maxLine: 2,
            ),
            Container(
              height: 1.0,
              margin: Utils.symmetric(h: 0.0, v: 8.0),
              color: grayColor.withOpacity(0.1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleImage(
                      size: 30.0,
                      image: KImages.ajoyImage,
                    ),
                    Utils.horizontalSpace(10),
                    const CustomText(
                      text: 'Ajoy',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ...List.generate(
                        5,
                        (index) => const CustomImage(
                              path: KImages.star,
                              color: secondaryColor,
                            )),
                  ],
                ),
              ],
            ),
            Utils.verticalSpace(12),
          ],
        ),
      ),
    );
  }
}
