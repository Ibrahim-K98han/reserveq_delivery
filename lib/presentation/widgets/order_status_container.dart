import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constraints.dart';
import '../utils/utils.dart';
import 'custom_image.dart';
import 'custom_text.dart';
class OrderStatusContainer extends StatelessWidget {

  const OrderStatusContainer({
    super.key,
      this.statusNumber,  required this.statusName, this.path,
  });
  final String? statusNumber;
  final String statusName;
  final String? path;

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
        padding:  const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0xfffef3f5),
                  shape: BoxShape.circle
              ),
              height: 50.0,
              width: 50.0,
              child:  CustomImage(path: path,),
            ),
            Utils.verticalSpace(4),
            CustomText(text: statusNumber!,fontWeight: FontWeight.w700,fontSize: 14,),
            CustomText(text: statusName,fontWeight: FontWeight.w500,fontSize: 12,),

          ],
        ),
      ),
    );
  }
}