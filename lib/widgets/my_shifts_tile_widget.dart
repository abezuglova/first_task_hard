import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class MyShiftsTileWidget extends StatelessWidget {
  const MyShiftsTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TileWidget(
      rotateAngle: -2.32,
      tileWidth: 175.49,
      tileHeight: 73.81,
      child: Text('Мои смены'),
    );
  }
}
