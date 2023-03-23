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
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              left: 10.5.w,
              top: 93.11.h,
              child: const CoinBalanceTileWidget(),
            ),
            Positioned(
              left: 313.03.w,
              top: 75.39.h,
              child: const ProfileTileWidget(),
            ),
            Positioned(
              left: 103.09.w,
              top: 211.h,
              child: const LevelTileWidget(),
            ),
            Positioned(
              left: 23.14.w,
              top: 358.23.h,
              child: const TimetableTileWidget(),
            ),
            Positioned(
              left: 22.w,
              top: 455.9.h,
              child: const ShiftTileWidget(),
            ),
            Positioned(
              left: 386.84.w,
              top: 452.62.h,
              child: const EmptyTileWidget(),
            ),
            Positioned(
              left: 17.75.w,
              top: 638.46.h,
              child: const CrystalBalanceTileWidget(),
            ),
            Positioned(
              left: 208.w,
              top: 645.46.h,
              child: const SectionsTileWidget(),
            ),
            Positioned(
              left: 215.99.w,
              top: 727.h,
              child: const MyShiftsTileWidget(),
            ),
          ],
        ));
  }
}
