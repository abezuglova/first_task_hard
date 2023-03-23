import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: const [
              Positioned(
                  child: TileWidget(
                      rotateAngle: 20, tileWidth: 200, tileHeight: 150)),
            ],
          ),
        ));
  }
}
