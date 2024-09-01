import 'package:tip_app/constants/app_enums.dart';

class Utils {
  static Map<TipType, String> get tipTypeMap => {
        TipType.tip01: 'assets/images/Tip_01.png',
        TipType.tip02: 'assets/images/Tip_02.png',
        TipType.tip03: 'assets/images/Tip_03.png',
      };

  static Map<TipType, List<String>> get tipTypeMapWithText => {
        TipType.tip01: [
          'Fast and Easy Shopping',
          'Shop quickly with our user-friendly design.Discover popular items and personalized recommendations.'
        ],
        TipType.tip02: [
          'Product Information',
          'Get details, specs, and reviews for this product. Add to your cart or save for later.'
        ],
        TipType.tip03: [
          'Your Cart',
          'Review items, check the total cost,and proceed to checkout. Complete your purchase with ease.'
        ],
      };
}
