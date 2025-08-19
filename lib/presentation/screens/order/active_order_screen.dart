import 'package:delivery_ui/presentation/screens/order/single_order_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../routes/route_names.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';

class ActiveOrderScreen extends StatelessWidget {
  const ActiveOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: CustomScrollView(
              slivers: [
                const CustomSliverAppBar(title: 'Active Order'),
                SliverToBoxAdapter(child: Utils.verticalSpace(10.0)),
                SliverPadding(
                  sliver: SliverList.separated(
                    itemCount: 5,
                    // delegate: SliverChildBuilderDelegate(
                    //       (BuildContext context, int index) => const SingleOrderCard(),
                    //   childCount: 10,
                    // ),
                    itemBuilder: (BuildContext context, int index) {
                      return const SingleOrderCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Utils.verticalSpace(12);
                    },
                  ),
                  padding: Utils.only(left: 14),
                ),
                SliverToBoxAdapter(child: Utils.verticalSpace(30.0)),
              ],
            ),
          ),
        ],
      )
    );
  }
}
