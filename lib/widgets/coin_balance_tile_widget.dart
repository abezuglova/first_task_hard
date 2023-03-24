import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinBalanceTileWidget extends StatelessWidget {
  const CoinBalanceTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Positioned(
      left: 16.w,
      top: 80.h,
      child: TileWidget(
        rotateAngle: -5.79,
        tileWidth: 254.w,
        tileHeight: 122.h,
        child: Column(
          children: [
            SizedBox(height: 16.h),
            Text(
              'Баланс монет: 1500 💸',
              style: textTheme.headlineSmall,
            ),
            SizedBox(
              height: 16.85.h,
            ),
            SizedBox(
              width: 186.w,
              height: 43.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Потратить',
                  style: textTheme.labelSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
