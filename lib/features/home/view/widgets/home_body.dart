import 'package:flutter/material.dart';

import 'content_home.dart';
import 'header_home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      physics: const RangeMaintainingScrollPhysics(),
      slivers: [
        HeaderHome(),
        ContentHome(),
      ],
    );
  }
}
