import 'package:flutter/material.dart';

class TimetableWidget extends StatelessWidget {
  const TimetableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Scaffold(
        body: Center(
          child: Text(
            'Здесь будет расписание',
            style: textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}
