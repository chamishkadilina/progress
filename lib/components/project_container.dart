import 'package:flutter/material.dart';

class ProjectContainer extends StatelessWidget {
  final Color? backgroundColor;
  final IconData? icon;
  final String projectTitle;
  final String date;
  final String progressBarIndicatorValue;
  final double? projectPercentageValue;

  const ProjectContainer({
    required this.backgroundColor,
    required this.icon,
    required this.projectTitle,
    required this.date,
    required this.progressBarIndicatorValue,
    required this.projectPercentageValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: 396,
      height: 86,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),

      // project content
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 3D icon
          Icon(
            icon,
            size: 48,
          ),
          const Spacer(),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // project name
              Text(
                projectTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(
                width: 309,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Spacer(),
                    // percentage
                    Text(
                      progressBarIndicatorValue,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              // progress bar
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  width: 309,
                  height: 12,
                  child: LinearProgressIndicator(
                    value: projectPercentageValue,
                    backgroundColor: const Color(0xFFFFFFFF),
                    valueColor: const AlwaysStoppedAnimation(
                      Color(0xFF6D41E3),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
