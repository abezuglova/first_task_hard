import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class ShiftTileWidget extends StatelessWidget {
  const ShiftTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TileWidget(
      rotateAngle: 2.76,
      tileWidth: 354,
      tileHeight: 168.13,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Сейчас идёт',
            style: TextStyle(color: AppColors.redTextColor),
          ),
          const Text('1 смена 2022'),
          const Text('Корпус №3       Отряд №2'),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Чат отряда (3 сообщ.)'),
          ),
        ],
      ),
    );
  }
}
