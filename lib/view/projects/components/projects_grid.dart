import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_info.dart';
import 'package:get/get.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;

  ProjectGrid({
    super.key,
    this.crossAxisCount = 3,
    this.ratio = 1.3,
  });

  final ProjectController controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: projectList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return Obx(
          () => MouseRegion(
            onEnter: (_) => controller.onHover(index, true),
            onExit: (_) => controller.onHover(index, false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),

                // Changed Colors Here
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff00C6FF),
                    Color(0xff0072FF),
                  ],
                ),

                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff00C6FF).withOpacity(0.4),
                    blurRadius:
                        controller.hovers[index] ? 25 : 12,
                    spreadRadius:
                        controller.hovers[index] ? 2 : 0,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff0F172A),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(23),
                  child: ProjectStack(index: index),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}