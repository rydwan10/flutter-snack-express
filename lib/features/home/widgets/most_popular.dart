import 'package:flutter/material.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';

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
                "Most Popular",
                style: context.exTextTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "See All",
                style: context.exTextTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12),
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: 145,
        height: 220,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 6,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Color(0xfffd2d38),
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
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
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
              padding: EdgeInsets.all(8),
              width: 155,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Coca Cola Original Flavor",
                    style: context.exTextTheme.bodySmall?.copyWith(
                      // fontSize: ExFontSize.font12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
