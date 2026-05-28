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
    final bool isMobile = Responsive.isMobile(context);

    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: start,
        end: end,
      ),
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: Responsive.isDesktop(context)
                  ? 700
                  : Responsive.isTablet(context)
                      ? 600
                      : MediaQuery.of(context).size.width,
            ),
            child: Text(
              'Flutter Developer with 4+ years of experience building scalable and reliable mobile applications for Android and iOS. Strong hands-on expertise in Flutter, Dart, Java, Firebase, REST APIs, and payment gateway integrations. Experienced in complete app lifecycle management, including development, testing, deployment, and store releases. Known for clean coding practices, performance optimization, and delivering production-ready solutions aligned with business goals.',
              textAlign:
                  isMobile ? TextAlign.center : TextAlign.start,
              softWrap: true,
              overflow: TextOverflow.visible,
              style: TextStyle(
                color: Colors.white70,
                fontSize: isMobile ? value - 3 : value,
                height: 1.7,
                letterSpacing: 0.3,
                wordSpacing: 1,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        );
      },
    );
  }
}