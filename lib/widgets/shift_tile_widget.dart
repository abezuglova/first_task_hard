import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShiftTileWidget extends StatelessWidget {
  const ShiftTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TileWidget(
      rotateAngle: -2.76,
      tileWidth: 354.w,
      tileHeight: 168.13.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Сейчас идёт',
            style: textTheme.bodySmall!.copyWith(color: AppColors.redTextColor),
          ),
          Text(
            '1 смена 2022',
            style: textTheme.headlineLarge,
          ),
          Text(
            'Корпус №3       Отряд №2',
            style: textTheme.bodySmall,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Чат отряда (3 сообщ.)',
              style: textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}
