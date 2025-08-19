import 'package:flutter/material.dart';
import '../utils/k_images.dart';
import '../utils/utils.dart';
import 'custom_image.dart';
class CircleImage extends StatelessWidget {
  const CircleImage(
      {super.key,
        this.image = KImages.userImage,
        this.size = 110.0,
        this.isFile});
  final String image;
  final double size;
  final bool? isFile;
  @override
  Widget build(BuildContext context) {
    final fileImage = isFile ?? false;
    return Container(
      height: Utils.vSize(size),
      width: Utils.vSize(size),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipRRect(
        borderRadius: Utils.borderRadius(r: size / 1.0),
        child: CustomImage(
          path: image,
          fit: BoxFit.cover,
          isFile: fileImage,
          height: Utils.vSize(size),
          width: Utils.vSize(size),
        ),
      ),
    );
  }
}