import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:textdetection/core/utils/Widget/custom_list_tile.dart';

import '../../../../core/constant/string.dart';
import '../../../../generated/assets.dart';
import '../../../auth/view/widgets/back_arrow.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(
        context,
        title: AppString.historyHeader,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                /// TODO remove history
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(Assets.svgTrash),
              ),
            ),
          ),
        ],
      ),
      body: _buildBody(context),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          30.h.verticalSpace,
          // Load files history here
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return CustomListTile(
                    title: "File: $index",
                  );
                },
                separatorBuilder: (context, index) => 30.dm.verticalSpace,
                itemCount: 10),
          ),
          30.h.verticalSpace,
        ],
      ),
    );
  }
}
