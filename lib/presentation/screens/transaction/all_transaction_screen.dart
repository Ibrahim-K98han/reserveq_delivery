import 'package:delivery_ui/presentation/screens/transaction/recent_transaction_card.dart';
import 'package:flutter/material.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
class AllTransactionScreen extends StatelessWidget {
  const AllTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.grey.shade100,
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
              const CustomSliverAppBar(title: 'Recent Transaction'),
              SliverToBoxAdapter(child: Utils.verticalSpace(0.0)),
              SliverPadding(
                sliver: SliverList.separated(
                  itemCount: 10,
                  // delegate: SliverChildBuilderDelegate(
                  //       (BuildContext context, int index) => const SingleOrderCard(),
                  //   childCount: 10,
                  // ),
                  itemBuilder: (BuildContext context, int index) {
                    return const SingleTransactionCard();
                  }, separatorBuilder: (BuildContext context, int index) {
                  return Utils.verticalSpace(0);
                },
                ), padding: Utils.only(left: 0),
              ),

              SliverToBoxAdapter(child: Utils.verticalSpace(30.0)),
            ],
          ),
        ],
      )

    );
  }
}