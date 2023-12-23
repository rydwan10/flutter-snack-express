import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';
import 'package:snack_express/widgets/templates/ex_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return ExScreen(
      useLeading: false,
      title: "",
      actions: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: SvgPicture.asset(
            context.exImages.svg.icFavoriteOutline,
          ),
        )
      ],
      body: Builder(
        builder: (context) {
          final height = MediaQuery.of(context).size.height -
              Scaffold.of(context).appBarMaxHeight!;
          return SizedBox(
            height: height,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    width: MediaQuery.of(context).size.width,
                    height: height / 4,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFf77e39),
                          Color(0xFFF74861),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "2 item",
                              style: context.exTextTheme.titleMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Rp 25.000",
                              style:
                                  context.exTextTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(600),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  context.exImages.svg.icCartOutline,
                                  colorFilter: const ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.33,
                    decoration: BoxDecoration(
                      color: context.exColor.background.main,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(28),
                        bottomRight: Radius.circular(28),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Coca-Cola Original Flavor",
                                  style: context.exTextTheme.headlineSmall
                                      ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Soft drink Beverage",
                                  style:
                                      context.exTextTheme.bodyLarge?.copyWith(
                                    color: context.exColor.text.additional,
                                  ),
                                ),
                                const SizedBox(height: 38),
                                UnconstrainedBox(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        color: context.exColor.border.main,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          size: 18,
                                          color: Colors.orange,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          "4.3",
                                          style: context.exTextTheme.labelMedium
                                              ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                UnconstrainedBox(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        color: context.exColor.border.main,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const Text("🛵"),
                                        const SizedBox(width: 6),
                                        Text(
                                          "30 min",
                                          style: context.exTextTheme.labelMedium
                                              ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 24),
                                Container(
                                  color: Colors.red,
                                  width: 200,
                                  child: Text(
                                      "🌬️ Dive into a world of pure refreshment with the crisp and invigorating taste of an ice-cold Coca-Cola. Picture this: beads of condensation glistening on the sleek, chilled can as you eagerly anticipate that first, satisfying sip."),
                                ),
                                const SizedBox(height: 220),
                                CustomNumberInput(),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 28,
                            top: 98,
                            child: Image.asset(
                              "assets/png/cocacola.png",
                              height: 250,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// class Test extends StatelessWidget {
//   const Test({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Coca-Cola Original Flavor",
//                   style: context.exTextTheme.headlineSmall?.copyWith(
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "Soft drink Beverage",
//                   style: context.exTextTheme.bodyLarge?.copyWith(
//                     color: context.exColor.text.additional,
//                   ),
//                 ),
//                 const SizedBox(height: 38),
//                 UnconstrainedBox(
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 8,
//                       vertical: 4,
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100),
//                       border: Border.all(
//                         color: context.exColor.border.main,
//                       ),
//                     ),
//                     child: Row(
//                       children: [
//                         const Icon(
//                           Icons.star,
//                           size: 18,
//                           color: Colors.orange,
//                         ),
//                         const SizedBox(width: 6),
//                         Text(
//                           "4.3",
//                           style: context.exTextTheme.labelMedium?.copyWith(
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 UnconstrainedBox(
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 8,
//                       vertical: 4,
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100),
//                       border: Border.all(
//                         color: context.exColor.border.main,
//                       ),
//                     ),
//                     child: Row(
//                       children: [
//                         const Text("🛵"),
//                         const SizedBox(width: 6),
//                         Text(
//                           "30 min",
//                           style: context.exTextTheme.labelMedium?.copyWith(
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             left: 20,
//             top: 100,
//             child: Image.asset(
//               "assets/png/cocacola.png",
//               height: 250,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class CustomNumberInput extends StatefulWidget {
  @override
  _CustomNumberInputState createState() => _CustomNumberInputState();
}

class _CustomNumberInputState extends State<CustomNumberInput> {
  TextEditingController _controller = TextEditingController();
  int _value = 0;

  void _increment() {
    setState(() {
      _value++;
      _controller.text = '$_value';
    });
  }

  void _decrement() {
    setState(() {
      _value = _value > 0 ? _value - 1 : 0;
      _controller.text = '$_value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 62,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Color(0xFF23252c),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: _decrement,
              child: Container(
                width: 62,
                height: 62,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color(0xff282a31),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // Open the number keyboard when the user taps on the text field.
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child: Container(
                    color: const Color(0xFF23252c),
                    child: Center(
                      child: TextField(
                        style: TextStyle(
                          color: context.exColor.text.colorBG,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLength: 3,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // fillColor: Color(0xFF23252c),
                        ),
                        buildCounter: (context,
                            {required currentLength,
                            required isFocused,
                            maxLength}) {
                          return null;
                        },
                        controller: _controller,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            _value = int.tryParse(value) ?? 0;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: _increment,
              child: Container(
                width: 62,
                height: 62,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color(0xff282a31),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
