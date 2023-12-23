import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                "🚚 SnackExpress",
                style: context.exTextTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Welcome back, Rydwan!",
                style: context.exTextTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          // TODO change to hero icons
          SvgPicture.asset(context.exImages.svg.icSearch,
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ))
        ],
      ),
    );
  }
}
