import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class CrystalBalanceTileWidget extends StatefulWidget {
  const CrystalBalanceTileWidget({super.key});

  @override
  State<CrystalBalanceTileWidget> createState() =>
      _CrystalBalanceTileWidgetState();
}

class _CrystalBalanceTileWidgetState extends State<CrystalBalanceTileWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _shakeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _shakeAnimation = Tween<double>(
      begin: 0,
      end: 10 * math.pi,
    ).animate(_controller);

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() {
    _controller.isAnimating
        ? _controller.stop()
        : _shakeAnimation.isCompleted
            ? _controller.reverse()
            : _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Positioned(
      left: 19.95.w + math.sin(_shakeAnimation.value) * 6,
      top: 636.28.h,
      child: TileWidget(
        rotateAngle: -1.51,
        tileWidth: 164.09.w,
        tileHeight: 169.63.h,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(11.w, 23.25.h, 11.w, 18.h),
              child: Text(
                'Баланс кристаллов: 200 💎',
                style: textTheme.headlineSmall,
              ),
            ),
            SizedBox(
              width: 119.85.w,
              height: 43.h,
              child: ElevatedButton(
                onPressed: _onTap,
                child: Text(
                  'Потратить',
                  style: textTheme.labelSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
