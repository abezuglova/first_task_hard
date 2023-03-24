import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimetableTileWidget extends StatefulWidget {
  const TimetableTileWidget({super.key});

  @override
  State<TimetableTileWidget> createState() => _TimetableTileWidgetState();
}

class _TimetableTileWidgetState extends State<TimetableTileWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _sizeAnimation;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _sizeAnimation = Tween<Offset>(
      begin: Offset(298.44.w, 65.59.h),
      end: Offset(400.0.w, 600.0.h),
    ).animate(_controller);

    _positionAnimation = Tween<Offset>(
      begin: Offset(22.99.w, 357.57.h),
      end: const Offset(5.5, 111),
    ).animate(_controller);

    _rotateAnimation = Tween<double>(
      begin: -0.25,
      end: 0,
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: _controller.isAnimating
                ? null
                : _controller.isCompleted
                    ? Center(
                      child: Text(
                          'Здесь будет расписание',
                          style: textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        ),
                    )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '13:15 Обед',
                            style: textTheme.headlineMedium,
                          ),
                          TextButton(
                            onPressed: _onTap,
                            child: const Icon(
                              Icons.arrow_forward,
                              color: AppColors.mainTextColor,
                              size: 36,
                            ),
                          )
                        ],
                      ),
          ),
        ),
      ),
    );
  }
}
