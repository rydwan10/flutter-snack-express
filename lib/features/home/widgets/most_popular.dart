import 'package:flutter/material.dart';
import 'package:snack_express/config/theme/constant/colors.dart';
import 'package:snack_express/features/shared/product_detail/product_detail_main.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';
import 'package:snack_express/utils/navigate.dart';
import 'package:snack_express/widgets/atoms/ex_icon_button.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Paling Populer",
                style: context.exTextTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Lihat semua",
                style: context.exTextTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 8),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _MostPopularItem(),
              _MostPopularItem(),
              _MostPopularItem(),
              _MostPopularItem(),
              _MostPopularItem(),
              _MostPopularItem(),
            ],
          ),
        )
      ],
    );
  }
}

class _MostPopularItem extends StatelessWidget {
  const _MostPopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigate.pushNamed(
          ProductDetailMain.routeName,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          clipBehavior: Clip.antiAlias,
          width: 145,
          // height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: const Color(0xfffd2d38),
                    padding: const EdgeInsets.all(8),
                    width: 155,
                    height: 140,
                    child: Image.asset(
                      "assets/png/cocacola.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.34),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "4.2",
                            style: context.exTextTheme.labelSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: 155,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Coca Cola Original Flavor",
                      style: context.exTextTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Rp 17.000",
                          style: context.exTextTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ExIconButton(
                          boxDecoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ExColors.dynamite.shade400,
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
