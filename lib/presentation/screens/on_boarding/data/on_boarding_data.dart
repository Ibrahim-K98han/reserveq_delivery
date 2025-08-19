
import 'package:equatable/equatable.dart';

import '../../../utils/k_images.dart';

class OnBoardingData extends Equatable {
  final String image;
  final String title;
  final String subTitle;

  const OnBoardingData({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  List<Object?> get props => [
        image,
        title,
        subTitle,
      ];
}

final List<OnBoardingData> data = [
  const OnBoardingData(
    image: KImages.onBoarding01,
    title: 'Join Us for Efficient Delivery Services!',
    subTitle:
        'Never overspend your money again with enjoy delicious food feature.',
  ),
  const OnBoardingData(
    image: KImages.onBoarding02,
    title: 'Onboard for Better Deliveries with ReservQ',
    subTitle:
        'Never overspend your money again with enjoy delicious food feature.',
  ),
  const OnBoardingData(
    image: KImages.onBoarding03,
    title: 'Ready, Set, Deliver! Your  Journey Begins Now',
    subTitle:
        'Never overspend your money again with enjoy delicious food feature.',
  ),

];
