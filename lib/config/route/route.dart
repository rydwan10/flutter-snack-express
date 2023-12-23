import 'package:get/get.dart';
import 'package:snack_express/features/app/app_main.dart';
import 'package:snack_express/features/shared/product_detail/product_detail_main.dart';

class RouteData {
  static List<GetPage> routes = [
    AppMain.route,
    ProductDetailMain.route,
  ];
}
