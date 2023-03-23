import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class ProfileTileWidget extends StatelessWidget {
  const ProfileTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TileWidget(
      rotateAngle: 27.76,
      tileWidth: 112.92,
      tileHeight: 89.56,
      child: Center(
        child: Text('Профиль'),
      ),
    );
  }
}
