import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  final double start;
  final double end;

  const AnimatedDescriptionText({
    super.key,
    required this.start,
    required this.end,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: start,
        end: end,
      ),
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      builder: (context, value, child) {
        return SizedBox(
          width: Responsive.isDesktop(context)
              ? 700
              : Responsive.isTablet(context)
                  ? 600
                  : double.infinity,
          child: Text(
            'Flutter Developer with 4+ years of experience in building scalable and high-performance cross-platform mobile applications for Android and iOS. Skilled in Flutter, Dart, REST APIs, Firebase, GetX, BLoC, and Cubit with expertise in creating modern UI/UX designs and responsive applications. Experienced in Android development using Java and Kotlin with a strong foundation in Computer Science and software architecture.',
            textAlign: Responsive.isMobile(context)
                ? TextAlign.center
                : TextAlign.start,
            maxLines: Responsive.isMobile(context) ? 8 : 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white70,
              fontSize: value,
              height: 1.8,
              letterSpacing: 0.5,
              wordSpacing: 1.5,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      },
    );
  }
}