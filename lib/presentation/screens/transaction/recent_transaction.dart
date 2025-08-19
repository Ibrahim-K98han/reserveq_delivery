import 'package:delivery_ui/presentation/screens/transaction/recent_transaction_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../routes/route_names.dart';
import '../home/component/heading.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Heading(
            title2: 'View All',
            title1: 'Recent Transaction',
            padding: 10.0,
            onTap: () =>
                Navigator.pushNamed(context, RouteNames.allTransactionScreen),
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ...List.generate(
                  5,
                      (index) =>  const Padding(
                    padding: EdgeInsets.only(top: 0,left: 0,right: 0),
                    child: SingleTransactionCard(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}




