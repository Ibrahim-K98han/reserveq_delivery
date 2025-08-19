import 'package:delivery_ui/presentation/utils/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';

class SingleTransactionCard extends StatelessWidget {
  const SingleTransactionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      // height: 70.0,

      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0xFFF9FAFB), shape: BoxShape.circle),
              height: 50,
              width: 50,
              child: const CustomImage(
                path: KImages.withdrawIcon,
              ),
            ),
            title: const CustomText(
              text: 'Withdraw',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            subtitle: Row(
              children: [
                const CustomText(text: '03:35 PM'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    width: 4.w,
                    height: 4.h,
                    decoration: const BoxDecoration(
                        color: whitGrayColor, shape: BoxShape.circle),
                  ),
                ),
                const CustomText(text: 'Aug 21,2021'),
              ],
            ),
            trailing: CustomText(
              text: Utils.formatPrice(context, 234),
              fontSize: 16,
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
    );
  }
}
