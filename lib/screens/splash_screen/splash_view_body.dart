import 'package:bookly_app/screens/home_screen/home_screen.dart';
import 'package:bookly_app/shared/constants.dart';
import 'package:bookly_app/shared/slidingText.dart';
import 'package:bookly_app/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingAnimation();

    navigateToHome();
  }

  void navigateToHome() {
    //wait al time da w b3d kda nfz al mtloob
    Future.delayed(const Duration(seconds: 2),(){
      //b3d al 2 sec dol nfzli kza
      Get.to(()=>
          const HomeScreen(),duration: kTranstionDuration);
    });
  }

  void initSlidingAnimation() {
    animationController=AnimationController(
        vsync: this,
        duration:const Duration(seconds: 2) );
    slidingAnimation=Tween<Offset>(begin:const Offset(0,2) ,end:Offset.zero ).animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        //b2ol 3ayz children ya5od akbr width momkn ya5do
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(AssetsData.logo)),
          SlidingText(slidingAnimation: slidingAnimation),
        //Image.asset(name),
        ],
      );
  }

  @override
  void dispose() {
    animationController.dispose();
  }
}

