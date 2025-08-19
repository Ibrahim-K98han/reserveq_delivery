import 'package:delivery_ui/presentation/screens/order/single_order_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../routes/route_names.dart';
import '../../utils/utils.dart';
import '../home/component/heading.dart';

class ActiveOrderView extends StatelessWidget {
  const ActiveOrderView({super.key, });

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
           SliverToBoxAdapter(
          child: Heading(
            title1: 'Active Order',
            padding: 10.0,
            onTap: () =>
                Navigator.pushNamed(context, RouteNames.activeOrderScreen),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
            ...List.generate(5, (index) =>  Padding(
              padding: Utils.only(left: index==0?20.0:12.0,right: index==4?20.0:0.0),
              child: const SingleOrderCard(),
            )),
          ],),
        ),

      ],
    );
  }
}

