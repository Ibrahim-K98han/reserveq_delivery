import 'package:delivery_ui/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';

class CompletedOrderDetailsScreen extends StatelessWidget {
  const CompletedOrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 10,
        ),
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(title: 'Order Details'),
            SliverToBoxAdapter(child: Utils.verticalSpace(10.0)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
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
                      const CustomText(
                        text: 'Order Confirmation',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
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
                                  const CustomText(
                                    text: 'Sub Total',
                                    color: grayLightColor,
                                  ),
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
                                  const Row(
                                    children: [
                                      CustomText(
                                        text: 'Extra addon ',
                                        color: grayLightColor,
                                      ),
                                      CustomText(
                                        text: '(3)',
                                        color: blackColor,
                                      ),
                                    ],
                                  ),
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
                                  const CustomText(
                                    text: 'Fee and Delivery',
                                    color: grayLightColor,
                                  ),
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
                                    color: blackColor,
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

                      // TextButton(onPressed: (){}, child: const Text('Decline',style: TextStyle(color: primaryColor),),),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 12,right: 12),
                child: PrimaryButton(
                    text: 'Request for Review',
                    onPressed: () {
                      // showDialog(
                      //   //barrierDismissible: false,
                      //   context: context,
                      //   builder: (context) => AlertDialog(
                      //     actions: <Widget>[
                      //       Stack(
                      //         clipBehavior: Clip.none,
                      //         alignment: AlignmentDirectional.topCenter,
                      //         children: <Widget>[
                      //           SizedBox(
                      //             child: Column(
                      //               mainAxisAlignment: MainAxisAlignment.center,
                      //               crossAxisAlignment:
                      //                   CrossAxisAlignment.center,
                      //               children: [
                      //                 Utils.verticalSpace(70.0),
                      //                 const Center(
                      //                   child: Text(
                      //                     "Order Successfully",
                      //                     style: TextStyle(
                      //                         fontSize: 24,
                      //                         fontWeight: FontWeight.w700),
                      //                   ),
                      //                 ),
                      //                 const Center(
                      //                   child: Text(
                      //                     "Delivered",
                      //                     style: TextStyle(
                      //                         fontSize: 24,
                      //                         fontWeight: FontWeight.w700),
                      //                   ),
                      //                 ),
                      //                 const CustomText(text: 'Order id:#25041'),
                      //                 Utils.verticalSpace(20.0),
                      //                 Container(
                      //                   height: 1.0,
                      //                   margin: Utils.symmetric(h: 0.0, v: 8.0),
                      //                   color: grayColor.withOpacity(0.2),
                      //                 ),
                      //                 const CustomText(text: 'Total Amount'),
                      //                 CustomText(
                      //                   text: Utils.formatPrice(context, 256),
                      //                   fontSize: 24,
                      //                   color: primaryColor,
                      //                   fontWeight: FontWeight.w600,
                      //                 ),
                      //                 Utils.verticalSpace(20.0),
                      //                 PrimaryButton(
                      //                     bgColor: blackColor,
                      //                     text: 'Request for Review',
                      //                     onPressed: () {
                      //                       Navigator.pushNamed(context,
                      //                           RouteNames.reviewScreen);
                      //                     }),
                      //               ],
                      //             ),
                      //           ),
                      //           Positioned(
                      //             top: -60,
                      //             child: CircleAvatar(
                      //               radius: 60,
                      //               //backgroundColor: primaryColor,
                      //               child: Image.asset(
                      //                 KImages.signupSuccess,
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // );

                      Navigator.pushNamed(context,
                          RouteNames.reviewScreen);
                    }),
              ),
            ),
            SliverToBoxAdapter(child: Utils.verticalSpace(10.0)),
          ],
        ),
      ),
    );
  }
}
