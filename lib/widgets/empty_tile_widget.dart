import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class EmptyTileWidget extends StatelessWidget {
  const EmptyTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TileWidget(
      rotateAngle: 2.76,
      tileWidth: 339.49,
      tileHeight: 155.84,
      child: Placeholder(),
    );
  }
}
