import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShiftTileWidget extends StatelessWidget {
  const ShiftTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Positioned(
      left: 25.84.w,
      top: 444.28.h,
      child: TileWidget(
        rotateAngle: -2.76,
        tileWidth: 354.w,
        tileHeight: 168.13.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Сейчас идёт',
                style: textTheme.bodySmall!
                    .copyWith(color: AppColors.redTextColor),
              ),
              SizedBox(height: 1.h),
              Text(
                '1 смена 2022',
                style: textTheme.headlineLarge,
              ),
              SizedBox(height: 14.h),
              Text(
                'Корпус №3       Отряд №2',
                style: textTheme.bodySmall,
              ),
              SizedBox(height: 12.h),
              SizedBox(
                width: 324.11.w,
                height: 40.16.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Чат отряда (3 сообщ.)',
                    style: textTheme.labelSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
