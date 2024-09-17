import 'package:calculator1/res/routes/routes_name.dart';
import 'package:calculator1/view/calculateView/calculate_view.dart';
import 'package:get/get.dart';

class Routes extends GetxController {
  static List<GetPage> routePage = [
    GetPage(
      name: RoutesName.calculateView,
      page: () => const CalculateView(),
    ),
  ];
}
