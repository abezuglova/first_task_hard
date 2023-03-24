import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class ShiftTileWidget extends StatefulWidget {
  const ShiftTileWidget({super.key});

  @override
  State<ShiftTileWidget> createState() => _ShiftTileWidgetState();
}

class _ShiftTileWidgetState extends State<ShiftTileWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _sizeAnimation;
  late Animation<Offset> _buttonPositionAnimation;
  late Animation<double> _rotateAnimation;
  late Animation<double> _buttonRotateAnimation;
  late Animation<Color?> _colorAnimation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _sizeAnimation = Tween<Offset>(
      begin: Offset(324.11.w, 40.16.h),
      end: Offset(354.w, 168.13.h),
    ).animate(_controller);

    _buttonPositionAnimation = Tween<Offset>(
      begin: Offset(17.31.w, 112.96.h),
      end: const Offset(0, 0),
    ).animate(_controller);

    _rotateAnimation = Tween<double>(
      begin: -2.76,
      end: 0,
    ).animate(_controller);

    _buttonRotateAnimation = Tween<double>(
      begin: -2.76 * math.pi / 180,
      end: 0,
    ).animate(_controller);

    _colorAnimation = ColorTween(
      begin: AppColors.buttonColor,
      end: Colors.white,
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
        : _sizeAnimation.isCompleted
            ? _controller.reverse()
            : _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Positioned(
      left: 25.84.w,
      top: 444.28.h,
      child: Stack(
        children: [
          TileWidget(
            rotateAngle: _rotateAnimation.value,
            tileWidth: 354.w,
            tileHeight: 168.13.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Сейчас идёт',
                    style: textTheme.bodySmall!
                        .copyWith(color: AppColors.redTextColor),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    '1 смена 2022',
                    style: textTheme.headlineLarge,
                  ),
                  SizedBox(height: 14.h),
                  Text(
                    'Корпус №3       Отряд №2',
                    style: textTheme.bodySmall,
                  ),
                  SizedBox(height: 12.h),
                ],
              ),
            ),
          ),
          Positioned(
            left: _buttonPositionAnimation.value.dx,
            top: _buttonPositionAnimation.value.dy,
            child: Transform.rotate(
              angle: _buttonRotateAnimation.value,
              child: SizedBox(
                width: _sizeAnimation.value.dx,
                height: _sizeAnimation.value.dy,
                child: ElevatedButton(
                  onPressed: _onTap,
                  style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                        backgroundColor:
                            MaterialStatePropertyAll(_colorAnimation.value),
                      ),
                  child: _controller.isAnimating
                      ? null
                      : _controller.isCompleted
                          ? Text(
                              'Здесь можно отправить быстрое сообщение в чат отряда',
                              style: textTheme.headlineMedium,
                              textAlign: TextAlign.center,
                            )
                          : Text(
                              'Чат отряда (3 сообщ.)',
                              style: textTheme.labelSmall,
                            ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
