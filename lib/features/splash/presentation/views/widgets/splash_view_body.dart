import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController; 
  late Animation<Offset> slidingAnimation ;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this ,
       duration: Duration(seconds: 1));

    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    
    slidingAnimation.addListener((){
      setState(() {
        
      });
    });
    animationController.forward();
    super.initState();
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(kLogo , width: 200,),
        const SizedBox(
          height: 5,
        ),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context , _) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text(
                'Read Free Books',
              textAlign: TextAlign.center,
              ),
            );
          }
        )
        
      ],
    );
  }
}