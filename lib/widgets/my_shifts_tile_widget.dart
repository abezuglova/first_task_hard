import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyShiftsTileWidget extends StatelessWidget {
  const MyShiftsTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TileWidget(
      rotateAngle: 2.32,
      tileWidth: 175.49.w,
      tileHeight: 73.81.h,
      child: const Text('Мои смены'),
    );
  }
}
