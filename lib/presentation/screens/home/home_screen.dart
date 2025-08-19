
import 'package:delivery_ui/presentation/utils/constraints.dart';
import 'package:flutter/material.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../order/active_order.dart';
import 'component/home_app_bar.dart';
import 'component/order_status.dart';
import '../review/recent_reviews.dart';
import '../transaction/recent_transaction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
  var width = size.width;
  print(width);
    return Scaffold(
      backgroundColor:Colors.grey.shade100,
      body:  Stack(
        children: [
          const CustomImage(
            path: KImages.allScreenBg,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          CustomScrollView(
            slivers: [
              const HomeAppBar(firstText: 'Select Location',secondText: '4517Washington',icon: Icons.keyboard_arrow_down,),
              const OrderStatus(),
              const ActiveOrderView(),
              const RecentReview(),
              const RecentTransaction(),
              SliverToBoxAdapter(
                child: Utils.verticalSpace(size.height * 0.02),
              ),
            ],
          ),
        ],
      )
    );
  }
}
