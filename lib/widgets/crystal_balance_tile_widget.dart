import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class CrystalBalanceTileWidget extends StatelessWidget {
  const CrystalBalanceTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TileWidget(
      rotateAngle: 1.51,
      tileWidth: 164.09,
      tileHeight: 169.63,
      child: Column(
        children: [
          const Text('Баланс кристаллов: 200 💎'),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Потратить'),
          ),
        ],
      ),
    );
  }
}
