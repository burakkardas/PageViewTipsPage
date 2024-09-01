import 'package:flutter/material.dart';
import 'package:tip_app/constants/app_enums.dart';
import 'package:tip_app/utils/utils.dart';

class TipText extends StatelessWidget {
  const TipText({super.key, required this.tipType});

  final TipType tipType;
  @override
  Widget build(BuildContext context) {
    final String title =
        Utils.tipTypeMapWithText[tipType]?.elementAt(0).toString() ??
            'Unknown Tip';
    final String description =
        Utils.tipTypeMapWithText[tipType]?.elementAt(1).toString() ??
            'Unknown Tip';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: _titleTextStyle(),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: _descriptionTextStyle(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  TextStyle _descriptionTextStyle() {
    return const TextStyle(
      color: Colors.grey,
      fontSize: 12,
    );
  }

  TextStyle _titleTextStyle() {
    return const TextStyle(
        fontSize: 24, fontWeight: FontWeight.w700, color: Colors.green);
  }
}
