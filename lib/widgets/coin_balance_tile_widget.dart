import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;


class CoinBalanceTileWidget extends StatefulWidget {
  const CoinBalanceTileWidget({super.key});

  @override
  State<CoinBalanceTileWidget> createState() => _CoinBalanceTileWidgetState();
}

class _CoinBalanceTileWidgetState extends State<CoinBalanceTileWidget>
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
      left: 16.w + math.sin(_shakeAnimation.value) * 6,
      top: 80.h,
      child: TileWidget(
        rotateAngle: -5.79,
        tileWidth: 254.w,
        tileHeight: 122.h,
        child: Column(
          children: [
            SizedBox(height: 16.h),
            Text(
              'Баланс монет: 1500 💸',
              style: textTheme.headlineSmall,
            ),
            SizedBox(
              height: 16.85.h,
            ),
            SizedBox(
              width: 186.w,
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
