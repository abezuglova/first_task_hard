import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class LevelTileWidget extends StatelessWidget {
  const LevelTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TileWidget(
      rotateAngle: 4.58,
      tileWidth: 301.66,
      tileHeight: 122,
      child: Column(
        children: [
          const Text('Уровень достижений: 5'),
          const SizedBox(height: 20),
          Stack(
            children: [
              Container(
                width: 220.81,
                height: 31.38,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: AppColors.buttonColor,
                ),
              ),
              Container(
                width: 159.72,
                height: 31.38,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: AppColors.progressColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
