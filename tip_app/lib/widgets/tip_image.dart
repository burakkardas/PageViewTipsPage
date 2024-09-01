import 'package:flutter/material.dart';
import 'package:tip_app/constants/app_enums.dart';
import 'package:tip_app/utils/utils.dart';

class TipImage extends StatelessWidget {
  const TipImage({super.key, required this.tipType});

  final TipType tipType;
  @override
  Widget build(BuildContext context) =>
      Image.asset(Utils.tipTypeMap[tipType].toString(),
          fit: BoxFit.cover, height: 300);
}
