import 'package:flutter/material.dart';
import '../../routes/route_names.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../utils/k_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  initializeController() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);

    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
      reverseCurve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    initializeController();
    goToNext();
    super.initState();
  }

  goToNext() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteNames.onBoardingScreen, (route) => false);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
   // var height = MediaQuery.of(context).size.height;
   // print(height);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomImage(
            path: KImages.splashBg2,
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: Padding(
                padding: Utils.symmetric(h: 60.0),
                child: FadeTransition(
                  opacity: animation,
                  child: const CustomImage(
                    path: KImages.appLogo2,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
