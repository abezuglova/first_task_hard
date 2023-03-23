import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class CoinBalanceTileWidget extends StatelessWidget {
  const CoinBalanceTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TileWidget(
      rotateAngle: 5.79,
      tileWidth: 254,
      tileHeight: 122,
      child: Column(
        children: [
          const Text('Баланс монет: 1500 💸'),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Потратить'),
          ),
        ],
      ),
    );
  }
}
