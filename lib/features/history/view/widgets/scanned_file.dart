import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import '../../../../core/utils/Widget/custom_list_tile.dart';class ScannedFile extends StatelessWidget {  const ScannedFile({    super.key,  });  @override  Widget build(BuildContext context) {    return Padding(      padding: EdgeInsets.symmetric(horizontal: 40),      child: Column(        children: [          30.h.verticalSpace,          Expanded(            child: ListView.separated(                itemBuilder: (context, index) {                  return InkWell(                    onLongPress: () {}, //Show Menu Deleted ot Things Same                    child: CustomListTile(                      title: "File: $index",                      onTap: () {}, //Show File is Scanned                    ),                  );                },                separatorBuilder: (context, index) => 30.dm.verticalSpace,                itemCount: 10),          ),          30.h.verticalSpace,        ],      ),    );  }}