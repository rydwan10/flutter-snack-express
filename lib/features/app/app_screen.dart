import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snack_express/config/theme/constant/vector.dart';
import 'package:snack_express/constants/font_size.dart';
import 'package:snack_express/cubit/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:snack_express/cubit/preferences_theme/preferences_theme_cubit.dart';
import 'package:snack_express/features/cart/cart_main.dart';
import 'package:snack_express/features/discount/discount_main.dart';
import 'package:snack_express/features/favorite/favorite_main.dart';
import 'package:snack_express/features/home/home_main.dart';
import 'package:snack_express/features/profile/profile_main.dart';
import 'package:snack_express/models/preferences_theme.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';
import 'package:snack_express/widgets/templates/ex_screen.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  final _pageController = PageController(initialPage: 0);
  final List<Widget> _screenOption = const <Widget>[
    HomeMain(),
    FavoriteMain(),
    CartMain(),
    DiscountMain(),
    ProfileMain(),
  ];

  @override
  Widget build(BuildContext context) {
    return ExScreen(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _screenOption,
      ),
      hasSafeArea: false,
      scrollableBody: false,
      bottomNavigationBar: BlocConsumer<BottomNavigationCubit, int>(
        listener: (context, tabIndex) {
          _pageController.jumpToPage(tabIndex);
        },
        builder: (context, tabIndex) {
          return BlocBuilder<PreferencesThemeCubit, PreferencesTheme>(
            builder: (context, prefState) {
              return BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedFontSize: font12,
                unselectedFontSize: font12,
                // backgroundColor: context.exColor.background.base,
                // selectedItemColor: const Color(0xFFF64A60),
                // unselectedItemColor: context.exColor.icon.unselectedNavBar,
                // showSelectedLabels: false,
                // showUnselectedLabels: false,
                iconSize: 24,
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: tabIndex == 0
                          ? SvgPicture.asset(
                              ExVectors.icHome,
                              colorFilter: ColorFilter.mode(
                                context.exColor.icon.selected,
                                BlendMode.srcIn,
                              ),
                            )
                          : SvgPicture.asset(
                              ExVectors.icHomeOutline,
                              colorFilter: ColorFilter.mode(
                                context.exColor.icon.unselectedNavBar,
                                BlendMode.srcIn,
                              ),
                            ),
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: tabIndex == 1
                          ? SvgPicture.asset(
                              ExVectors.icFavorite,
                              colorFilter: ColorFilter.mode(
                                context.exColor.icon.selected,
                                BlendMode.srcIn,
                              ),
                            )
                          : SvgPicture.asset(
                              ExVectors.icFavoriteOutline,
                              colorFilter: ColorFilter.mode(
                                context.exColor.icon.unselectedNavBar,
                                BlendMode.srcIn,
                              ),
                            ),
                    ),
                    label: "Favorite",
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: tabIndex == 2
                          ? SvgPicture.asset(
                              ExVectors.icShoppingBag,
                              colorFilter: ColorFilter.mode(
                                context.exColor.icon.selected,
                                BlendMode.srcIn,
                              ),
                            )
                          : SvgPicture.asset(
                              ExVectors.icShoppingBagOutline,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                    ),
                    label: "Cart",
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: tabIndex == 3
                          ? SvgPicture.asset(
                              ExVectors.icDiscount,
                              colorFilter: ColorFilter.mode(
                                context.exColor.icon.selected,
                                BlendMode.srcIn,
                              ),
                            )
                          : SvgPicture.asset(
                              ExVectors.icDiscountOutline,
                              colorFilter: ColorFilter.mode(
                                context.exColor.icon.unselectedNavBar,
                                BlendMode.srcIn,
                              ),
                            ),
                    ),
                    label: "Discount",
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: tabIndex == 4
                          ? SvgPicture.asset(
                              ExVectors.icProfile,
                              colorFilter: ColorFilter.mode(
                                context.exColor.icon.selected,
                                BlendMode.srcIn,
                              ),
                            )
                          : SvgPicture.asset(
                              ExVectors.icProfileOutline,
                              colorFilter: ColorFilter.mode(
                                context.exColor.icon.unselectedNavBar,
                                BlendMode.srcIn,
                              ),
                            ),
                    ),
                    label: "Profile",
                  ),
                ],
                onTap: onTapNavigationItem,
                currentIndex: tabIndex,
              );
            },
          );
        },
      ),
    );
  }
}

extension _AppScreenStateManager on _AppScreenState {
  void onTapNavigationItem(int index) async {
    if (!mounted) return;
    context.read<BottomNavigationCubit>().changeTab(index);
  }
}
