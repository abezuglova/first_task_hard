import 'package:first_task_hard/assets/app_colors.dart';
import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LevelTileWidget extends StatefulWidget {
  const LevelTileWidget({super.key});

  @override
  State<LevelTileWidget> createState() => _LevelTileWidgetState();
}

class _LevelTileWidgetState extends State<LevelTileWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Positioned(
      left: 97.74.w,
      top: 222.85.h,
      child: ScaleTransition(
        scale: _animation,
        child: GestureDetector(
          onTap: () {
            _controller.isAnimating
                ? _controller.stop()
                : _controller.repeat(reverse: true);
          },
          child: TileWidget(
            rotateAngle: 4.58,
            tileWidth: 301.66.w,
            tileHeight: 122.h,
            child: Column(
              children: [
                SizedBox(height: 16.h),
                Text(
                  'Уровень достижений: 5',
                  style: textTheme.headlineSmall,
                ),
                SizedBox(height: 30.h),
                Stack(
                  children: [
                    Container(
                      width: 220.81.w,
                      height: 31.38.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: AppColors.buttonColor,
                      ),
                    ),
                    Container(
                      width: 159.72.w,
                      height: 31.38.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: AppColors.progressColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
