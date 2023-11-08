import 'package:flutter/material.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        decoration: BoxDecoration(
          color: context.exColor.background.container,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.pin_drop, color: Colors.yellow),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your delivery address",
                      style: context.exTextTheme.labelSmall?.copyWith(
                        color: context.exColor.text.additional,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Jl. Jendral Sudirman no. 80 A. Ponorogo",
                      style: context.exTextTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
