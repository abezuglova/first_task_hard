import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CrystalBalanceTileWidget extends StatelessWidget {
  const CrystalBalanceTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TileWidget(
      rotateAngle: -1.51,
      tileWidth: 164.09.w,
      tileHeight: 169.63.h,
      child: Column(
        children: [
          Text(
            'Баланс кристаллов: 200 💎',
            style: textTheme.headlineSmall,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Потратить',
              style: textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}
