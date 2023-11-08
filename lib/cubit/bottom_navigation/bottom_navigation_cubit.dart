import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snack_express/models/enums/bottom_navigation_enum.dart';

class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit() : super(BottomTabEnum.home.value);

  static int bottomTab = BottomTabEnum.home.value;

  static bool get isHome => bottomTab == BottomTabEnum.home.value;

  static bool get isFavorite => bottomTab == BottomTabEnum.favorite.value;

  static bool get isCart => bottomTab == BottomTabEnum.cart.value;

  static bool get isDiscount => bottomTab == BottomTabEnum.discount.value;

  static bool get isProfile => bottomTab == BottomTabEnum.profile.value;

  void changeTab(int? index) {
    bottomTab = index ?? state;
    emit(index ?? state);
    // Navigate.setCurrentScreen(getRouteBottomTab(index ?? state));
  }
}

String getRouteBottomTab(int index) {
  if (index == BottomTabEnum.home.value) {
    return 'HomeScreen';
  }
  if (index == BottomTabEnum.favorite.value) {
    return 'FavoriteScreen';
  }
  if (index == BottomTabEnum.cart.value) {
    return 'CartScreen';
  }
  if (index == BottomTabEnum.discount.value) {
    return 'DiscountScreen';
  }
  if (index == BottomTabEnum.profile.value) {
    return 'ProfileScreen';
  }
  return '';
}
