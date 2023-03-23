import 'package:first_task_hard/widgets/coin_balance_tile_widget.dart';
import 'package:first_task_hard/widgets/crystal_balance_tile_widget.dart';
import 'package:first_task_hard/widgets/empty_tile_widget.dart';
import 'package:first_task_hard/widgets/level_tile_widget.dart';
import 'package:first_task_hard/widgets/my_shifts_tile_widget.dart';
import 'package:first_task_hard/widgets/profile_tile_widget.dart';
import 'package:first_task_hard/widgets/section_tile_widget.dart';
import 'package:first_task_hard/widgets/shift_tile_widget.dart';
import 'package:first_task_hard/widgets/timetable_tile_widget.dart';
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
                child: CoinBalanceTileWidget(),
              ),
              Positioned(
                child: ProfileTileWidget(),
              ),
              Positioned(
                child: LevelTileWidget(),
              ),
              Positioned(
                child: TimetableTileWidget(),
              ),
              Positioned(
                child: ShiftTileWidget(),
              ),
              Positioned(
                child: EmptyTileWidget(),
              ),
              Positioned(
                child: CrystalBalanceTileWidget(),
              ),
              Positioned(
                child: SectionTileWidget(),
              ),
              Positioned(
                child: MyShiftsTileWidget(),
              ),
            ],
          ),
        ));
  }
}
