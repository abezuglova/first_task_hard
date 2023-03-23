import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LevelTileWidget extends StatelessWidget {
  const LevelTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TileWidget(
      rotateAngle: 4.58,
      tileWidth: 301.66.w,
      tileHeight: 122.h,
      child: Column(
        children: [
          Text(
            'Уровень достижений: 5',
            style: textTheme.headlineSmall,
          ),
          SizedBox(height: 20.h),
          Stack(
            children: [
              Container(
                width: 220.81.w,
                height: 31.38.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: AppColors.buttonColor,
                ),
              ),
              Container(
                width: 159.72.w,
                height: 31.38.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: AppColors.progressColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
