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

  final Animatable<Color?> _shadow = TweenSequence<Color?>([
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.yellow,
        end: Colors.green,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.green,
        end: Colors.blue,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.blue,
        end: Colors.purple,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.purple,
        end: Colors.pink,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.pink,
        end: Colors.red,
      ),
    ),
  ]);

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
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
              boxShadow: [
                BoxShadow(
                  color: _shadow
                      .evaluate(AlwaysStoppedAnimation(_controller.value))!,
                  blurRadius: 10.r,
                  spreadRadius: 3.r,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
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
