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
            CoinBalanceTileWidget(),
            ProfileTileWidget(),
            LevelTileWidget(),
            ShiftTileWidget(),
            EmptyTileWidget(),
            CrystalBalanceTileWidget(),
            SectionsTileWidget(),
            TimetableTileWidget(),
            MyShiftsTileWidget(),
          ],
        ));
  }
}
