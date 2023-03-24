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
  late Animation _sizeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    _sizeAnimation = Tween<Offset>(
      begin: Offset(178.34.w, 80.86.h),
      end: Offset(400.0.w, 700.0.h),
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

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Positioned(
      right: 21.09.w,
      bottom: 18.67.h,
      child: GestureDetector(
        onTap: () {
          _controller.isAnimating
              ? _controller.stop()
              : _sizeAnimation.isCompleted
                  ? _controller.reverse()
                  : _controller.forward();
        },
        child: TileWidget(
          rotateAngle: 2.32,
          tileWidth: _sizeAnimation.value.dx,
          tileHeight: _sizeAnimation.value.dy,
          child: Center(
            child: Text(
              'Мои смены',
              style: textTheme.headlineSmall,
            ),
          ),
        ),
      ),
    );
  }
}
