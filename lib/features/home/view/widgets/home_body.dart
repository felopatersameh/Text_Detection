import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        physics: const RangeMaintainingScrollPhysics(),
        slivers: [SliverToBoxAdapter()]);
  }
}
