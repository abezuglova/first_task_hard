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
              left: 16.w,
              top: 80.h,
              child: const CoinBalanceTileWidget(),
            ),
            Positioned(
              left: 285.68.w,
              top: 96.53.h,
              child: const ProfileTileWidget(),
            ),
            Positioned(
              left: 97.74.w,
              top: 222.85.h,
              child: const LevelTileWidget(),
            ),
            Positioned(
              left: 22.99.w,
              top: 357.57.h,
              child: const TimetableTileWidget(),
            ),
            Positioned(
              left: 25.84.w,
              top: 447.28.h,
              child: const ShiftTileWidget(),
            ),
            Positioned(
              left: 390.4.w,
              top: 444.36.h,
              child: const EmptyTileWidget(),
            ),
            Positioned(
              left: 19.95.w,
              top: 636.28.h,
              child: const CrystalBalanceTileWidget(),
            ),
            Positioned(
              left: 210.22.w,
              top: 639.65.h,
              child: const SectionsTileWidget(),
            ),
            Positioned(
              left: 214.42.w,
              top: 730.52.h,
              child: const MyShiftsTileWidget(),
            ),
          ],
        ));
  }
}
