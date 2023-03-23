import 'package:first_task_hard/widgets/coin_balance_tile_widget.dart';
import 'package:first_task_hard/widgets/profile_tile_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: const [
              Positioned(
                child: CoinBalanceTileWidget(),
              ),
              Positioned(child: ProfileTileWidget())
            ],
          ),
        ));
  }
}
