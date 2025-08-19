import 'package:delivery_ui/presentation/widgets/custom_dialog.dart';
import 'package:delivery_ui/presentation/widgets/primary_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Order Details',
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: Utils.symmetric(h: 24.0, v: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border(
                    bottom: BorderSide(color: Color(0xFFE5E6EB)),
                    left: BorderSide(color: Color(0xFFE5E6EB)),
                    right: BorderSide(color: Color(0xFFE5E6EB)),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        color: primaryColor,
                      ),
                      child: Padding(
                        padding: Utils.symmetric(v: 8.0, h: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                              text: 'Order ID: #25041',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: whiteColor,
                            ),
                            Row(
                              children: [
                                const CustomImage(
                                  path: KImages.rectangleIcon,
                                  color: whiteColor,
                                ),
                                Utils.horizontalSpace(6),
                                CustomText(
                                  text: Utils.formatPrice(context, 234),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: whiteColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ...List.generate(
                        3,
                        (index) => ListTile(
                              shape: RoundedRectangleBorder(
                                //  borderRadius: const BorderRadius.only(topRight: Radius.zero,topLeft: Radius.zero),
                                side: BorderSide(
                                  color: index == 2
                                      ? transparent
                                      : const Color(0xFFE5E6EB),
                                ),
                              ),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(6.r),
                                child: CustomImage(
                                  height: 52.h,
                                  width: 60.w,
                                  path: KImages.snadwhich,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: const CustomText(
                                maxLine: 1,
                                text: 'Sandwich & Chicken',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              subtitle: CustomText(
                                text: Utils.formatPrice(context, 234),
                                fontSize: 16,
                                color: primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                              trailing: const CustomText(
                                text: 'Q:1',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Utils.verticalSpace(10),
                      const CustomText(
                        text: 'Order Confirmation',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const CustomText(text: 'Sub Total'),
                                  CustomText(
                                    text: Utils.formatPrice(context, 234),
                                    fontSize: 16,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const CustomText(text: 'Extra addon'),
                                  CustomText(
                                    text: Utils.formatPrice(context, 12),
                                    fontSize: 16,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const CustomText(text: 'Fee and Delivery'),
                                  CustomText(
                                    text: Utils.formatPrice(context, 15),
                                    fontSize: 16,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              Container(
                                height: 1.0,
                                margin: Utils.symmetric(h: 0.0, v: 8.0),
                                color: grayColor.withOpacity(0.2),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const CustomText(
                                    text: 'Total Price',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  CustomText(
                                    text: Utils.formatPrice(context, 256),
                                    fontSize: 16,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: Utils.verticalSpace(30.0)),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  PrimaryButton(
                      text: 'Confirm Delivery',
                      bgColor: blackColor,
                      onPressed: () {
                        showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) => FeedBackDialog(
                            height: Utils.vSize(330.0),
                            image: KImages.orderDoneIcon,
                            message: 'Order Successfully Delivered',
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const CustomText(text: 'Order id:#25041'),
                                Utils.verticalSpace(12.0),
                                Container(
                                  height: 1.0,
                                  margin: Utils.symmetric(h: 0.0, v: 8.0),
                                  color: grayColor.withOpacity(0.2),
                                ),
                                Utils.verticalSpace(12.0),
                                const CustomText(
                                  text: 'Total Amount',
                                  fontSize: 14,
                                ),
                                CustomText(
                                  text: Utils.formatPrice(context, 256),
                                  fontSize: 32,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                                Utils.verticalSpace(24.0),
                                PrimaryButton(
                                    minimumSize: Size(size.width * 0.5, 52),
                                    bgColor: blackColor,
                                    text: 'Back to Home',
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, RouteNames.mainScreen);
                                    }),
                              ],
                            ),
                          ),
                        );
                      }),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Decline',
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: Utils.verticalSpace(10.0)),
          ],
        ),
      ),
    );
  }
}
