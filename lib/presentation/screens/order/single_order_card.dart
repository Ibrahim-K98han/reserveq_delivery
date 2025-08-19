import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class SingleOrderCard extends StatelessWidget {
  const SingleOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RouteNames.orderDetailsScreen);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: whiteColor,
              blurRadius: 1,
              blurStyle: BlurStyle.inner,
            ),
          ],
        ),
        child: Padding(
          padding: Utils.symmetric(v: 14.0, h: 14.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CustomText(
                        text: 'Order Id:',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                      CustomText(
                        text: ' #25041',
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFFE724C),
                          blurRadius: 3.0,
                          spreadRadius: 2.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.only(left: 4, right: 4, top: 2, bottom: 2),
                      child: CustomText(
                        text: 'Cash Delivery',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFE724C),
                      ),
                    ),
                  ),
                ],
              ),
              Utils.verticalSpace(12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // const CustomImage(path: KImages.rectangleIcon,color: Colors.grey,),
                      // Utils.horizontalSpace(4.0),
                      CustomText(
                        text: Utils.formatPrice(context, 234),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CustomImage(
                        path: KImages.timeIcon,
                      ),
                      Utils.horizontalSpace(2.0),
                      const CustomText(
                        text: '03:35 PM, 25 Aug',
                        color: grayColor,
                      ),
                    ],
                  ),
                ],
              ),
              Utils.verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 118.w,
                    height: 36.h,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: whitGrayColor),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: PrimaryButton(
                        text: 'Details',
                        textColor: blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouteNames.orderDetailsScreen);
                        },
                        bgColor: Colors.transparent,
                      ),
                    ),
                  ),
                  Utils.horizontalSpace(10),
                  SizedBox(
                    width: 118.w,
                    height: 36.h,
                    child: PrimaryButton(
                      borderRadiusSize: 8.r,
                      text: 'Distance',
                      fontSize: 14,
                      bgColor: blackColor,
                      fontWeight: FontWeight.w500,
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteNames.orderStatusScreen);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
