enum BottomTabEnum { home, favorite, cart, discount, profile }

extension BottomTab on BottomTabEnum {
  /// Handle navigation bar index
  int get value {
    switch (this) {
      case BottomTabEnum.home:
        return 0;
      case BottomTabEnum.favorite:
        return 1;
      case BottomTabEnum.cart:
        return 2;
      case BottomTabEnum.discount:
        return 3;
      case BottomTabEnum.profile:
        return 4;
      default:
        return 0;
    }
  }
}
