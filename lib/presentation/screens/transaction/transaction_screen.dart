import 'package:delivery_ui/presentation/screens/transaction/recent_transaction_card.dart';
import 'package:delivery_ui/presentation/utils/k_images.dart';
import 'package:delivery_ui/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../home/component/heading.dart';
import '../home/component/home_app_bar.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

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
            CustomScrollView(
              slivers: [
                const HomeAppBar(
                    firstText: 'Account Balance', secondText: '123456'),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: Utils.only(top: 12.0, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TransactionCard(
                            title: 'Send',
                            imgPath: KImages.transferIcon,
                          ),
                          Padding(
                            padding: Utils.symmetric(h: 10.0),
                            child: const TransactionCard(
                              title: 'Add',
                              imgPath: KImages.addTransaction,
                            ),
                          ),
                          const TransactionCard(
                            title: 'Withdraw',
                            imgPath: KImages.withdraw,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Heading(
                    title1: 'Recent Transaction',
                    padding: 10.0,
                    onTap: () => Navigator.pushNamed(
                        context, RouteNames.allTransactionScreen),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ...List.generate(
                          5,
                          (index) => Padding(
                                padding: Utils.symmetric(h: 0.0, v: 0.0),
                                child: const SingleTransactionCard(),
                              )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.title,
    required this.imgPath,
  });

  final String title;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Utils.vSize(100.0),
      width: Utils.vSize(100.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: whiteColor,
            blurRadius: 1,
            blurStyle: BlurStyle.inner,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Utils.verticalSpace(4),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0xfffef3f5), shape: BoxShape.circle),
              height: 50,
              width: 50,
              child: CustomImage(
                path: imgPath,
              ),
            ),
            Utils.verticalSpace(10),
            CustomText(
              text: title,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
