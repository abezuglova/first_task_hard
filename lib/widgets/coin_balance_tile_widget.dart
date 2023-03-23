import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinBalanceTileWidget extends StatelessWidget {
  const CoinBalanceTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TileWidget(
      rotateAngle: -5.79,
      tileWidth: 254.w,
      tileHeight: 122.h,
      child: Column(
        children: [
          Text(
            'Баланс монет: 1500 💸',
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
