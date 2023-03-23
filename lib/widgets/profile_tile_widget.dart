import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTileWidget extends StatelessWidget {
  const ProfileTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {},
      child: TileWidget(
        rotateAngle: 27.76,
        tileWidth: 112.92.w,
        tileHeight: 89.56.h,
        child: Center(
          child: Text(
            'Профиль',
            style: textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
