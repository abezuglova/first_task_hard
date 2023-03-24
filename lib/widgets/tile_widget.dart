import 'package:first_task_hard/assets/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TileWidget extends StatelessWidget {
  final double rotateAngle;
  final double tileWidth;
  final double tileHeight;
  final Widget child;
  const TileWidget({
    super.key,
    required this.rotateAngle,
    required this.tileWidth,
    required this.tileHeight,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotateAngle * math.pi / 180,
      child: Container(
        width: tileWidth,
        height: tileHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 5.r,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
