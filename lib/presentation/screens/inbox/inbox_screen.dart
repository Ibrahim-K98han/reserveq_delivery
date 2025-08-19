import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';
import 'chat_screen.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
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
                const CustomSliverAppBar(
                  title: 'Inbox',
                  visibleBackButton: false,
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: Utils.symmetric(v: 10.0, h: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: grayColor,
                          size: 30,
                        ),
                        suffixIcon: SizedBox(
                          height: 30.0,
                          width: 30.0,
                          child: Center(
                            child: GestureDetector(
                              onTap: () {},
                              child: const CustomImage(
                                path: KImages.filterIcon,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  sliver: SliverList.separated(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const SingleInboxCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 1.0,
                        margin: Utils.symmetric(h: 0.0, v: 8.0),
                        color: grayColor.withOpacity(0.2),
                      );
                    },
                  ),
                  padding: Utils.symmetric(h: 20),
                ),
                SliverToBoxAdapter(child: Utils.verticalSpace(15.0)),
              ],
            ),
          ],
        ));
  }
}

class SingleInboxCard extends StatelessWidget {
  const SingleInboxCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatScreen()));
        },
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: CustomImage(
              path: KImages.snadwhich,
              fit: BoxFit.cover,
              width: 50.w,
              height: 50.h,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
              text: 'Sandwich',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            Container(
              width: 20.w,
              height: 20.h,
              decoration: const BoxDecoration(
                  color: primaryColor, shape: BoxShape.circle),
              child: const Center(
                child: CustomText(
                  textAlign: TextAlign.center,
                  text: '3',
                  color: whiteColor,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
        subtitle: Row(
          children: [
            const Expanded(
              flex: 2,
              child: CustomText(
                text: 'Loren Spam Tratrai Delivery Dan',
                maxLine: 1,
                fontSize: 12,
                color: grayLightColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Utils.horizontalSpace(8),
            Expanded(
              child: Row(
                children: [
                  const CustomImage(path: KImages.time),
                  Utils.horizontalSpace(4),
                  const CustomText(
                    text: '5:04PM',
                    fontSize: 12,
                    color: grayLightColor,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
