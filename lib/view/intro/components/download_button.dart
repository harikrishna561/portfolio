import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatefulWidget {
  const DownloadButton({super.key});

  @override
  State<DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  bool isHovering = false;

  final String resumeUrl =
      'https://drive.google.com/drive/folders/1FLrnosq97xNWhpNP961VfNuMmpLV698Z?usp=sharing';

  Future<void> _launchResume() async {
    final Uri uri = Uri.parse(resumeUrl);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovering = false;
        });
      },
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: _launchResume,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 28,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),

            // Updated Modern Theme
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isHovering
                  ? [
                      const Color(0xff00B4DB),
                      const Color(0xff0083B0),
                    ]
                  : [
                      const Color(0xff141E30),
                      const Color(0xff243B55),
                    ],
            ),

            boxShadow: [
              BoxShadow(
                color: isHovering
                    ? const Color(0xff00B4DB).withOpacity(0.5)
                    : Colors.black.withOpacity(0.25),
                blurRadius: isHovering ? 20 : 10,
                spreadRadius: 1,
                offset: const Offset(0, 6),
              ),
            ],

            border: Border.all(
              color: Colors.white.withOpacity(0.08),
              width: 1,
            ),
          ),

          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedScale(
                scale: isHovering ? 1.1 : 1,
                duration: const Duration(milliseconds: 200),
                child: const FaIcon(
                  FontAwesomeIcons.download,
                  color: Colors.white,
                  size: 16,
                ),
              ),

              const SizedBox(width: 12),

              Text(
                'Download Resume',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}