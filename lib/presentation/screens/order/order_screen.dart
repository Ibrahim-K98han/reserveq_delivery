import 'package:delivery_ui/presentation/screens/order/single_order_card.dart';
import 'package:flutter/material.dart';
import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Stack(
          children: [
            const CustomImage(
              path: KImages.allScreenBg,
              width: double.maxFinite,
              height: double.maxFinite,
              fit: BoxFit.cover,
            ),
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: whiteColor,
                  automaticallyImplyLeading: false,
                  toolbarHeight: Utils.vSize(60.0),
                  pinned: true,
                  title: const CustomText(
                    text: 'My Orders',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                  bottom: const BottomTab(),
                  //bottom: bottom as PreferredSizeWidget,
                ),
                SliverList.list(
                  children: List.generate(
                    6,
                    (index) => GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, RouteNames.orderDetailsScreen),
                      child: Padding(
                        padding: Utils.only(left: 16, right: 16, top: 12),
                        child: const SingleOrderCard(),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Utils.verticalSpace(size.height * 0.02),
                ),
              ],
            ),
          ],
        ));
  }
}

class BottomTab extends StatefulWidget implements PreferredSizeWidget {
  const BottomTab({super.key});

  @override
  State<BottomTab> createState() => _BottomTabState();

  @override
  Size get preferredSize => Size.fromHeight(Utils.vSize(50.0));
}

class _BottomTabState extends State<BottomTab> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = ['Active', 'New Order', 'Completed'];
    return Padding(
      padding: Utils.only(
        left: 10,
        right: 20,
      ),
      child: Container(
        padding: Utils.symmetric(h: 4.0, v: 4.0),
        width: double.infinity,
        // height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border(
                bottom: BorderSide(color: grayColor.withOpacity(0.2)),
                top: BorderSide(
                  color: grayColor.withOpacity(0.2),
                ),
                left: BorderSide(
                  color: grayColor.withOpacity(0.2),
                ),
                right: BorderSide(
                  color: grayColor.withOpacity(0.2),
                ))),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              tabs.length,
              (index) {
                final active = currentIndex == index;
                return GestureDetector(
                  onTap: () => setState(() => currentIndex = index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    padding: Utils.symmetric(v: 8.0, h: 14.0),
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: active ? primaryColor : Colors.transparent,
                          blurStyle: BlurStyle.inner,
                        ),
                      ],
                      // border: Border(
                      //   bottom: BorderSide(
                      //       style: active ? BorderStyle.solid : BorderStyle.none,
                      //       color: primaryColor,
                      //       width: 3.0),
                      // ),
                    ),
                    child: CustomText(
                      text: tabs[index],
                      color: active ? Colors.white : grayColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
