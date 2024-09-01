import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:tip_app/constants/app_enums.dart';
import 'package:tip_app/page/tip_page.dart';

class Tips extends StatefulWidget {
  const Tips({super.key});

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  final List<Widget> _tipPages = [
    const TipPage(tipType: TipType.tip01),
    const TipPage(tipType: TipType.tip02),
    const TipPage(tipType: TipType.tip03)
  ];
  final PageController _pageController = PageController();
  int _currentItem = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            _pageView(),
            _positionedPageView(),
          ],
        ),
      );

  Positioned _positionedPageView() {
    return Positioned(
      bottom: 50,
      child: _pageViewDotIndicator(),
    );
  }

  PageView _pageView() {
    return PageView(
      onPageChanged: (int index) {
        setState(() {
          _currentItem = index;
        });
      },
      controller: _pageController,
      children: _tipPages,
    );
  }

  PageViewDotIndicator _pageViewDotIndicator() {
    return PageViewDotIndicator(
      currentItem: _currentItem,
      count: _tipPages.length,
      size: const Size(10, 10),
      unselectedSize: const Size(5, 5),
      boxShape: BoxShape.circle,
      unselectedColor: Colors.grey,
      selectedColor: Colors.green,
    );
  }
}
