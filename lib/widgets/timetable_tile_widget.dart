import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimetableTileWidget extends StatelessWidget {
  const TimetableTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TileWidget(
      rotateAngle: -0.25,
      tileWidth: 298.44.w,
      tileHeight: 65.59.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('13:15 Обед'),
          Icon(
            Icons.arrow_forward,
            color: AppColors.mainTextColor,
          )
        ],
      ),
    );
  }
}
