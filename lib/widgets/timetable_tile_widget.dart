import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimetableTileWidget extends StatelessWidget {
  const TimetableTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TileWidget(
      rotateAngle: -0.25,
      tileWidth: 298.44.w,
      tileHeight: 65.59.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '13:15 Обед',
              style: textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.arrow_forward,
                color: AppColors.mainTextColor,
                size: 36,
              ),
            )
          ],
        ),
      ),
    );
  }
}
