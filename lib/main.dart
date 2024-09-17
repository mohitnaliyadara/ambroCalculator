import 'package:calculator1/res/routes/routes.dart';
import 'package:calculator1/view/calculateView/calculate_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {  
 
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CalculateView(),
      getPages: Routes.routePage,
    );
  }
}
