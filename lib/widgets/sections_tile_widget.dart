import 'package:first_task_hard/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionsTileWidget extends StatefulWidget {
  const SectionsTileWidget({super.key});

  @override
  State<SectionsTileWidget> createState() => _SectionsTileWidgetState();
}

class _SectionsTileWidgetState extends State<SectionsTileWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 2000,
      ),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: -639.65.h,
    ).animate(_controller);

    _animation.addListener(() {
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
      left: 210.22.w,
      top: 639.65.h,
      child: Transform.translate(
        offset: Offset(0, _animation.value),
        child: GestureDetector(
          onTap: () {
            _controller.isAnimating
                ? _controller.stop()
                : _controller.repeat(reverse: true);
          },
          child: TileWidget(
            rotateAngle: -3.75,
            tileWidth: 175.49.w,
            tileHeight: 73.81.h,
            child: Center(
              child: Text(
                'Секции',
                style: textTheme.headlineSmall,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
