import 'package:flutter/material.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

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
                "Category",
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
        const SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _CategoryItem(
                categoryName: "Snack",
                imageName: "doritos",
                backgroundColor: Color(0xff91ce77),
              ),
              _CategoryItem(
                categoryName: "Soft Drink",
                imageName: "pepsi",
                backgroundColor: Color(0xff297fd5),
              ),
              _CategoryItem(
                categoryName: "Noodle",
                imageName: "indomie",
                backgroundColor: Color(0xffec3b5b),
              ),
              _CategoryItem(
                categoryName: "Noodle",
                imageName: "indomie",
                backgroundColor: Color(0xffec3b5b),
              ),
              _CategoryItem(
                categoryName: "Noodle",
                imageName: "indomie",
                backgroundColor: Color(0xffec3b5b),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final String categoryName;
  final String imageName;
  final Color? backgroundColor;

  const _CategoryItem({
    Key? key,
    required this.categoryName,
    required this.imageName,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: 120,
        height: 80,
        padding: const EdgeInsets.only(left: 12, top: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: backgroundColor,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Text(
                categoryName,
                style: context.exTextTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: -34,
              right: -12,
              child: Transform.rotate(
                angle: 6,
                child: Image.asset(
                  "assets/png/$imageName.png",
                  height: 90,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
