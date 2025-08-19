import 'package:flutter/material.dart';
import '../../../routes/route_names.dart';
import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.firstText, required this.secondText,  this.icon, });

  final String firstText;
  final String secondText;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SliverAppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: Utils.vSize(90.0),
      backgroundColor: transparent,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: Utils.symmetric(),

        background: const CustomImage(
          path: KImages.appBarBg,
          fit: BoxFit.cover,
        ),
        title: Column(
         //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    _borderContainer(ClipRRect(
                      borderRadius: Utils.borderRadius(),
                      child: const CustomImage(
                        path: KImages.userImage,
                        fit: BoxFit.cover,
                      ),
                    )),
                    Utils.horizontalSpace(10.0),
                     Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: firstText,
                              fontSize: 14.0,
                              color: whiteColor,
                            ),
                             Icon(
                              icon,
                              color: whiteColor,
                            ),
                          ],
                        ),
                        CustomText(
                          text: secondText,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                          color: whiteColor,
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    // GestureDetector(
                    //   // onTap: () =>
                    //   //     Navigator.pushNamed(context, RouteNames.cartScreen),
                    //   child: _borderContainer(const CustomImage(
                    //     path: KImages.cartIcon,
                    //     height: 30.0,
                    //     width: 30.0,
                    //   )),
                    // ),
                    // Utils.horizontalSpace(10.0),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, RouteNames.notificationScreen),
                      child: _borderContainer(const CustomImage(
                        path: KImages.activeBell,
                        height: 30.0,
                        width: 30.0,
                      )),
                    ),
                  ],
                ),
              ],
            ),
            Utils.verticalSpace(26),

            // GestureDetector(
            //   onTap: () {
            //     final controller = MainController();
            //     controller.naveListener.add(1);
            //   },
            //   child: Container(
            //     height: Utils.vSize(60.0),
            //     width: size.width,
            //     margin: Utils.symmetric(v: 16.0, h: 0.0),
            //     padding: Utils.symmetric(),
            //     decoration: BoxDecoration(
            //       color: whiteColor,
            //       borderRadius: Utils.borderRadius(),
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Row(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             const CustomImage(path: KImages.search),
            //             Utils.horizontalSpace(10.0),
            //             const CustomText(text: 'Search food...'),
            //           ],
            //         ),
            //         const CustomImage(path: KImages.filterIcon),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _borderContainer(Widget child) {
    return Container(
      height: Utils.vSize(46.0),
      width: Utils.vSize(46.0),
      margin: Utils.only(left: 0.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: whiteColor.withOpacity(0.3), width: 1.0),
        borderRadius: Utils.borderRadius(),
      ),
      child: child,
    );
  }
}
