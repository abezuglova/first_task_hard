import 'package:first_task_hard/widgets/coin_balance_tile_widget.dart';
import 'package:first_task_hard/widgets/crystal_balance_tile_widget.dart';
import 'package:first_task_hard/widgets/empty_tile_widget.dart';
import 'package:first_task_hard/widgets/level_tile_widget.dart';
import 'package:first_task_hard/widgets/my_shifts_tile_widget.dart';
import 'package:first_task_hard/widgets/profile_tile_widget.dart';
import 'package:first_task_hard/widgets/sections_tile_widget.dart';
import 'package:first_task_hard/widgets/shift_tile_widget.dart';
import 'package:first_task_hard/widgets/timetable_tile_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: const [
            Positioned(
              left: 10.5,
              top: 93.11,
              child: CoinBalanceTileWidget(),
            ),
            Positioned(
              left: 313.03,
              top: 75.39,
              child: ProfileTileWidget(),
            ),
            Positioned(
              left: 103.09,
              top: 211,
              child: LevelTileWidget(),
            ),
            Positioned(
              left: 23.14,
              top: 358.23,
              child: TimetableTileWidget(),
            ),
            Positioned(
              left: 22,
              top: 455.9,
              child: ShiftTileWidget(),
            ),
            Positioned(
              left: 386.84,
              top: 452.62,
              child: EmptyTileWidget(),
            ),
            Positioned(
              left: 17.75,
              top: 638.46,
              child: CrystalBalanceTileWidget(),
            ),
            Positioned(
              left: 208,
              top: 645.46,
              child: SectionsTileWidget(),
            ),
            Positioned(
              left: 215.99,
              top: 727,
              child: MyShiftsTileWidget(),
            ),
          ],
        ));
  }
}
