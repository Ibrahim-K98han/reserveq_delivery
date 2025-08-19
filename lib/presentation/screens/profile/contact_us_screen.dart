import 'package:delivery_ui/presentation/utils/k_images.dart';
import 'package:delivery_ui/presentation/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../utils/constraints.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
             CustomSliverAppBar(title: 'Contact us'),
            SliverPadding(
              padding: Utils.symmetric(v: 20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  CustomForm(
                    label: 'Full Name',
                    bottomSpace: 16.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Full name',
                        prefixIcon: PrefixIcon(
                          icon: KImages.profile1,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  CustomForm(
                    label: 'Full Name',
                    bottomSpace: 16.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Full name',
                        prefixIcon: PrefixIcon(
                          icon: KImages.questionIcon,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  CustomForm(
                    label: 'Email Address',
                    bottomSpace: 16.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'your email address',
                          prefixIcon: PrefixIcon(icon: KImages.mail)),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  CustomForm(
                    label: 'Phone Number',
                    bottomSpace: 16.0,
                    child: IntlPhoneField(
                      showDropdownIcon: false,
                      disableLengthCheck: true,
                      //   flagsButtonPadding: Utils.only(bottom: 4.0),
                      flagsButtonMargin: Utils.symmetric(h: 6.0),
                      decoration: const InputDecoration(
                        hintText: '2598798',
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(),
                        // ),
                      ),
                      initialCountryCode: 'US',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                  // CustomForm(
                  //   label: 'Phone Number',
                  //   bottomSpace: 16.0,
                  //   child: TextFormField(
                  //     decoration: const InputDecoration(
                  //         hintText: 'phone number',
                  //         ),
                  //     keyboardType: TextInputType.phone,
                  //     inputFormatters: [
                  //       FilteringTextInputFormatter.digitsOnly,
                  //       FilteringTextInputFormatter.deny('a'),
                  //     ],
                  //   ),
                  // ),
                  CustomForm(
                    label: 'Short Description',
                    bottomSpace: 30.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Please type your message'),
                      keyboardType: TextInputType.text,
                      maxLines: 3,
                    ),
                  ),
                  PrimaryButton(text: 'Send Now', onPressed: () {}),
                  Utils.verticalSpace(30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CustomImage(path: KImages.callActive),
                              Utils.horizontalSpace(4.0),
                              const CustomText(
                                text: 'Phone Number',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              )
                            ],
                          ),
                          const CustomText(
                            text: '+1 707 797 0462',
                            color: grayLightColor,
                          ),
                          const CustomText(
                            text: '+1 808 701 0414',
                            color: grayLightColor,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CustomImage(path: KImages.mailFast),
                              Utils.horizontalSpace(4.0),
                              const CustomText(
                                text: 'Email Address',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              )
                            ],
                          ),
                          const CustomText(
                            text: 'reservq@gmail.com',
                            color: grayLightColor,
                          ),
                          const CustomText(
                            text: 'david@gmail.com',
                            color: grayLightColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Utils.verticalSpace(30.0),
                  // const ContactInfo(
                  //   icon: Icons.phone,
                  //   title: 'Phone Number',
                  //   subTitle: '012-345-6789',
                  // ),
                  // const ContactInfo(
                  //   icon: Icons.email_outlined,
                  //   title: 'Mail Address',
                  //   subTitle: 'contact@gmail.com',
                  // ),
                  // const ContactInfo(
                  //   icon: Icons.location_on,
                  //   title: 'Contact Address',
                  //   subTitle: 'San Francisco City Hall\nSan Francisco, CA',
                  // ),
                ]),
              ),
            )
          ],
        )
      ],
    ));
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.bottom = 16.0,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final String subTitle;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Utils.symmetric(v: 10.0),
      margin: Utils.only(bottom: bottom),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: Utils.borderRadius(),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 40,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: Utils.symmetric(h: 6.0, v: 10.0),
            margin: Utils.only(right: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.2),
                borderRadius: Utils.borderRadius()),
            child: Icon(icon, color: blackColor),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(text: title, color: grayColor, fontSize: 12.0),
              Utils.verticalSpace(4.0),
              Flexible(
                fit: FlexFit.loose,
                child: CustomText(
                  text: subTitle,
                  maxLine: 3,
                  fontWeight: FontWeight.w500,
                  color: blackColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
