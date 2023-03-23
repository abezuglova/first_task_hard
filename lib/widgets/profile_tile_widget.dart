import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class ProfileTileWidget extends StatefulWidget {
  const ProfileTileWidget({super.key});

  @override
  State<ProfileTileWidget> createState() => _ProfileTileWidgetState();
}

class _ProfileTileWidgetState extends State<ProfileTileWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AnimatedBuilder(
      animation: _controller,
      child: GestureDetector(
        onTap: () {
          _controller.isAnimating ? _controller.stop() : _controller.repeat();
        },
        child: TileWidget(
          rotateAngle: 27.76,
          tileWidth: 112.92.w,
          tileHeight: 89.56.h,
          child: Center(
            child: Text(
              'Профиль',
              style: textTheme.headlineSmall,
            ),
          ),
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: child,
        );
      },
    );
  }
}
