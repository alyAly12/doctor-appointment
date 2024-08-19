import 'package:doctor_appointment/features/home_feature/presentation/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTopBar()
          ],
        ),
      ),
    );
  }
}
