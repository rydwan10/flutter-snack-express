import 'package:flutter/material.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';

class GreetingAndSearch extends StatelessWidget {
  const GreetingAndSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Azalea 👋",
                style: context.exTextTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "It's lunch time!",
                style: context.exTextTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          // TODO change to hero icons
          Icon(
            Icons.search,
            color: context.exColor.icon.main,
          ),
        ],
      ),
    );
  }
}
