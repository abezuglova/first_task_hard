import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTileWidget extends StatelessWidget {
  const ProfileTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TileWidget(
      rotateAngle: 27.76,
      tileWidth: 112.92.w,
      tileHeight: 89.56.h,
      child: const Center(
        child: Text('Профиль'),
      ),
    );
  }
}
