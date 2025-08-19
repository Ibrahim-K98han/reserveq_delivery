import 'package:delivery_ui/presentation/routes/route_names.dart';
import 'package:delivery_ui/presentation/utils/constraints.dart';
import 'package:delivery_ui/presentation/utils/k_images.dart';
import 'package:delivery_ui/presentation/widgets/custom_image.dart';
import 'package:delivery_ui/presentation/widgets/custom_text.dart';
import 'package:delivery_ui/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderStatusScreen extends StatefulWidget {
  const OrderStatusScreen({super.key});

  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Google Map
          const CustomImage(
            path: KImages.map,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),

          // Top AppBar
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.black)),
                  const SizedBox(width: 20),
                  const CustomText(
                    text: 'Order Status',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                  )
                ],
              ),
            ),
          ),

          // Bottom Card
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                  topLeft: Radius.circular(30.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomText(
                    text: 'Tracking Location',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),

                  const SizedBox(height: 12),

                  // Order ID and Time
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Order Id: #35041',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      Row(
                        children: [
                          CustomImage(path: KImages.time),
                          SizedBox(
                            width: 4,
                          ),
                          CustomText(
                            text: '06:35 PM, 28 Aug',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: grayLightColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Divider(
                    color: Colors.black.withOpacity(0.2),
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: const CustomImage(
                          path: KImages.personImage,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      const SizedBox(width: 10),

                      // Name & Rating
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Ronald Richards',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: blackColor,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                SizedBox(width: 4),
                                CustomText(
                                  text: '4.7 (100)',
                                  color: grayLightColor,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Message and Call Buttons
                      Row(
                        children: [
                          IconButton(
                            icon: const CustomImage(
                              path: KImages.message,
                              color: primaryColor,
                            ),
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              backgroundColor: pinkLightColor,
                              shape: const CircleBorder(),
                            ),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: const Icon(Icons.call, color: blackColor),
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              backgroundColor: grayLightColor.withOpacity(0.2),
                              shape: const CircleBorder(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: PrimaryButton(
                          text: 'Back to Home', onPressed: () {
                            Navigator.pushNamed(context, RouteNames.mainScreen);
                      })),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
