import 'package:delivery_ui/presentation/screens/review/single_review_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

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
              const CustomSliverAppBar(title: 'Recent Review'),
              SliverToBoxAdapter(child: Utils.verticalSpace(10.0)),
              SliverPadding(
                sliver: SliverList.separated(
                  itemCount: 5,
                  // delegate: SliverChildBuilderDelegate(
                  //       (BuildContext context, int index) => const SingleOrderCard(),
                  //   childCount: 10,
                  // ),
                  itemBuilder: (BuildContext context, int index) {
                    return const SingleReviewCard();
                  }, separatorBuilder: (BuildContext context, int index) {
                  return Utils.verticalSpace(12);
                },
                ), padding: Utils.only(left: 20,right: 20),
              ),

              SliverToBoxAdapter(child: Utils.verticalSpace(30.0)),
            ],
          ),
        ],
      )



    );
  }
}