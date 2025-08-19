import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_dialog.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import 'components/profile_app_bar.dart';
import 'components/profile_items.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
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
            const ProfileAppBar(),
            SliverToBoxAdapter(child: Utils.verticalSpace(size.height * 0.02)),
            SliverList(
                delegate: SliverChildListDelegate([
              ProfileItem(
                title: 'My order',
                icon: KImages.notepad,
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.activeOrderScreen);
                },
                //
              ),
              ProfileItem(
                title: 'My Profile',
                icon: KImages.profile,
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.updateProfileScreen);
                },
              ),
              ProfileItem(
                title: 'Contact Us',
                icon: KImages.idCard,
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.contactUsScreen);
                },
              ),
              ProfileItem(
                title: 'Payment Method',
                icon: KImages.p06,
                onTap: () {},
              ),
              ProfileItem(
                title: 'Notification',
                icon: KImages.notification,
                onTap: () =>
                    Navigator.pushNamed(context, RouteNames.notificationScreen),
              ),
              ProfileItem(
                title: 'Setting',
                icon: KImages.p07,
                onTap: () =>
                    Navigator.pushNamed(context, RouteNames.settingScreen),
              ),
              ProfileItem(
                title: 'Terms and Condition',
                icon: KImages.warning,
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.termsConditionScreen);
                },
              ),
              ProfileItem(
                title: 'Privacy Policy',
                icon: KImages.privacy,
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.privacyPolicyScreen);
                },
              ),
              ProfileItem(
                title: 'Help & FAQs',
                icon: KImages.p08,
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.faqScreen);
                },
              ),
              Utils.verticalSpace(size.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.loginScreen);
                    },
                    child: Container(
                      width: 122.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CustomImage(path: KImages.p09),
                          Utils.horizontalSpace(8),
                          const CustomText(
                            text: 'Logout',
                            color: whiteColor,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Utils.verticalSpace(10.0),
            ])),
          ],
        ),
      ],
    ));
  }
}

class LogoutPrompt extends StatelessWidget {
  const LogoutPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return FeedBackDialog(
        image: KImages.logoutPower,
        height: Utils.vSize(300.0),
        message: "Do you want to\nLOGOUT",
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomText(
              text: 'Do you want to logout?',
              textAlign: TextAlign.center,
              color: Color(0xFF535769),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1.43,
            ),
            Utils.verticalSpace(24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: PrimaryButton(
                    text: 'Cancel',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    borderRadiusSize: 4.0,
                    bgColor: blackColor,
                    textColor: whiteColor,
                    fontSize: 16.0,
                    minimumSize: Size(Utils.hSize(150.0), Utils.vSize(52.0)),
                    maximumSize: Size(Utils.hSize(150.0), Utils.vSize(52.0)),
                  ),
                ),
                Utils.horizontalSpace(20),
                Expanded(
                  child: PrimaryButton(
                    text: 'Logout',
                    onPressed: () => Navigator.of(context).pop(),
                    bgColor: primaryColor,
                    textColor: whiteColor,
                    borderRadiusSize: 4.0,
                    fontSize: 16.0,
                    minimumSize: Size(Utils.hSize(150.0), Utils.vSize(52.0)),
                    maximumSize: Size(Utils.hSize(150.0), Utils.vSize(52.0)),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
