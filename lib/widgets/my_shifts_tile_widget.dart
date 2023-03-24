import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyShiftsTileWidget extends StatefulWidget {
  const MyShiftsTileWidget({super.key});

  @override
  State<MyShiftsTileWidget> createState() => _MyShiftsTileWidgetState();
}

class _MyShiftsTileWidgetState extends State<MyShiftsTileWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _sizeAnimation;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _rotateAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _sizeAnimation = Tween<Offset>(
      begin: Offset(178.34.w, 80.86.h),
      end: Offset(411.0.w, 823.0.h),
    ).animate(_controller);

    _positionAnimation = Tween<Offset>(
      begin: Offset(213.w, 727.h),
      end: const Offset(0, 0),
    ).animate(_controller);

    _rotateAnimation = Tween<double>(
      begin: 2.32,
      end: 360,
    ).animate(_controller);

    _colorAnimation = ColorTween(
      begin: Colors.white,
      end: AppColors.buttonColor,
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
      left: _positionAnimation.value.dx,
      top: _positionAnimation.value.dy,
      child: GestureDetector(
        onTap: _onTap,
        child: TileWidget(
          rotateAngle: _rotateAnimation.value,
          tileWidth: _sizeAnimation.value.dx,
          tileHeight: _sizeAnimation.value.dy,
          child: Container(
            width: _sizeAnimation.value.dx,
            height: _sizeAnimation.value.dy,
            decoration: BoxDecoration(
              color: _colorAnimation.value,
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
            ),
            child: Center(
                child: _controller.isAnimating
                    ? null
                    : _controller.isCompleted
                        ? Text(
                            'Здесь должен быть список моих смен',
                            style: textTheme.headlineLarge,
                            textAlign: TextAlign.center,
                          )
                        : Text(
                            'Мои смены',
                            style: textTheme.headlineSmall,
                          )),
          ),
        ),
      ),
    );
  }
}
