import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class SectionTileWidget extends StatelessWidget {
  const SectionTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TileWidget(
      rotateAngle: 3.75,
      tileWidth: 175.49,
      tileHeight: 73.81,
      child: Text('Секции'),
    );
  }
}
