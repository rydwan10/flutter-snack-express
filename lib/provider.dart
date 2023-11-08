import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snack_express/cubit/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:snack_express/cubit/preferences_theme/preferences_theme_cubit.dart';

class ExProvider extends StatelessWidget {
  final Widget child;

  const ExProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PreferencesThemeCubit()),
        BlocProvider(create: (context) => BottomNavigationCubit()),
      ],
      child: child,
    );
  }
}
