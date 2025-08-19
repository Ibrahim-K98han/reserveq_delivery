import 'package:delivery_ui/presentation/utils/k_images.dart';
import 'package:flutter/material.dart';
import '../../../utils/utils.dart';
import '../../../widgets/order_status_container.dart';
class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return   SliverToBoxAdapter(
      child: Padding(
        padding:  Utils.only(left: 12,right: 12,top: 12),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const OrderStatusContainer(
                path: KImages.completeOrder,
                statusName: 'Complete',
                statusNumber: '200',
              ),
              Utils.horizontalSpace(6),
              const OrderStatusContainer(
                path: KImages.activeOrder,
                statusName: 'Active',
                statusNumber: '05',
              ),
              Utils.horizontalSpace(6),
              const OrderStatusContainer(
                path: KImages.newOrder,
                statusName: 'New',
                statusNumber: '12',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


