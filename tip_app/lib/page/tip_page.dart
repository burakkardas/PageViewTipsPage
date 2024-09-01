import 'package:flutter/material.dart';
import 'package:tip_app/constants/app_enums.dart';
import 'package:tip_app/widgets/tip_image.dart';
import 'package:tip_app/widgets/tip_text.dart';

class TipPage extends StatelessWidget {
  const TipPage({super.key, required this.tipType});

  final TipType tipType;
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TipImage(tipType: tipType),
            TipText(tipType: tipType),
          ],
        ),
      );
}
