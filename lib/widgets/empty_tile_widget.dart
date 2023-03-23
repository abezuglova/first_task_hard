import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EmptyTileWidget extends StatelessWidget {
  const EmptyTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}