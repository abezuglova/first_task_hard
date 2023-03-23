import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyTileWidget extends StatelessWidget {
  const EmptyTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TileWidget(
      rotateAngle: -2.76,
      tileWidth: 339.49.w,
      tileHeight: 155.84.h,
      child: const SizedBox(),
    );
  }
}
