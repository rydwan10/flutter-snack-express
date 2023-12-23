import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snack_express/cubit/preferences_theme/preferences_theme_cubit.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Profile Screen"),
          TextButton(
            onPressed: () =>
                context.read<PreferencesThemeCubit>().changeTheme(),
            child: Text("Change Theme"),
          )
        ],
      ),
    );
  }
}
