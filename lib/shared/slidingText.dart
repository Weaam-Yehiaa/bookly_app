import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
      //eh al animation al hy-listen 3leh
        animation: slidingAnimation,
        builder: (context,_) {
          return SlideTransition(
            position:slidingAnimation ,
            child:const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
              ),
            ),
          );
        }
    );
  }
}