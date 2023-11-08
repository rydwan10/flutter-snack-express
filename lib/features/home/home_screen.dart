import 'package:flutter/material.dart';
import 'package:snack_express/features/home/widgets/category.dart';
import 'package:snack_express/features/home/widgets/delivery_address.dart';
import 'package:snack_express/features/home/widgets/greeting_and_search.dart';
import 'package:snack_express/features/home/widgets/most_popular.dart';
import 'package:snack_express/widgets/templates/ex_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const ExScreen(
      hasSafeArea: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            GreetingAndSearch(),
            SizedBox(height: 24),
            DeliveryAddress(),
            SizedBox(height: 24),
            Category(),
            SizedBox(height: 24),
            MostPopular(),
          ],
        ),
      ),
    );
  }
}
