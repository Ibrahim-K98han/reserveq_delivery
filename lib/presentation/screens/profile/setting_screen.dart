import 'dart:ui';

import 'package:delivery_ui/presentation/utils/constraints.dart';
import 'package:delivery_ui/presentation/utils/k_images.dart';
import 'package:delivery_ui/presentation/utils/utils.dart';
import 'package:delivery_ui/presentation/widgets/custom_image.dart';
import 'package:delivery_ui/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:delivery_ui/presentation/widgets/custom_text.dart';
import 'package:delivery_ui/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
              const CustomSliverAppBar(title: 'Setting'),
              SliverToBoxAdapter(child: Utils.verticalSpace(15)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SwitchWidget(
                    text: 'Notification',
                    initialValue: true,
                    onToggle: (bool value) {},
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SettingsWidget(
                    onTap: () {},
                    icon: KImages.order,
                    text: 'Order Status',
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SettingsWidget(
                    onTap: () {},
                    icon: KImages.order,
                    text: 'Offers & Rewards',
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SettingsWidget(
                    onTap: () {},
                    icon: KImages.order,
                    text: 'Language',
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SettingsWidget(
                    onTap: () {},
                    icon: KImages.order,
                    text: 'FAQ',
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SettingsWidget(
                    onTap: () {},
                    icon: KImages.order,
                    text: 'About App',
                  ),
                ),
              ),
              SliverToBoxAdapter(child: Utils.verticalSpace(40)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: Utils.symmetric(h: 24.0),
                  child: PrimaryButton(
                      bgColor: blackColor,
                      text: 'Update Profile',
                      onPressed: () {}),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({
    super.key,
    this.text,
    required this.initialValue,
    required this.onToggle,
    this.widget,
  });

  final String? text;
  final bool initialValue;
  final ValueChanged<bool> onToggle;
  final Widget? widget;

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  late bool isOn;

  @override
  void initState() {
    super.initState();
    isOn = widget.initialValue;
  }

  void _toggle() {
    setState(() => isOn = !isOn);
    widget.onToggle(isOn);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Utils.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CustomImage(
                  path: KImages.notification,
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
                Utils.horizontalSpace(12),
                CustomText(
                  text: widget.text ?? '',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: _toggle,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    width: 50,
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isOn ? blackColor : Colors.grey.shade100,
                    ),
                    child: AnimatedAlign(
                      duration: const Duration(milliseconds: 100),
                      alignment:
                          isOn ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsWidget extends StatelessWidget {
  const SettingsWidget(
      {super.key, this.text, this.icon, this.onTap, this.languageText});

  final String? text;
  final String? languageText;
  final String? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Utils.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImage(
                  path: icon,
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
                Utils.horizontalSpace(12),
                CustomText(
                  text: text ?? '',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Row(
              children: [
                CustomText(
                  text: languageText ?? '',
                  fontWeight: FontWeight.w500,
                  color: grayLightColor,
                ),
                Utils.horizontalSpace(8),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: 30.w,
                    height: 24.h,
                    decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: const Icon(
                      Icons.arrow_forward_sharp,
                      color: whiteColor,
                      size: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
