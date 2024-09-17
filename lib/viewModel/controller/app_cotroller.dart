import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppCotroller extends GetxController {
  static final TextEditingController firstCTextFiledController =
      TextEditingController();
  static final TextEditingController secondCTextFiledController =
      TextEditingController();
  static final TextEditingController palluTextFiledController =
      TextEditingController();
  static final TextEditingController sktTextFiledController =
      TextEditingController();
  static final TextEditingController rateTextFiledController =
      TextEditingController();
  static final TextEditingController resultTextFiledController =
      TextEditingController();

  static double firstCValue = 0;
  static double secondCValue = 0;
  static double palluValue = 0;
  static double sktValue = 0;
  static double rateValue = 0;
  static double resultValue = 0;
  @override
  void onInit() {
    super.onInit();
    loadAllData();
  }

  static void firstCValueCal() {
    double firstC = double.parse(firstCTextFiledController.text);
    double result = (firstC * 1.5).roundToDouble();
    firstCValue = result;
  }

  static void secondCvalueCal() {
    double secondC = double.parse(secondCTextFiledController.text);
    double result = (secondC * 2).roundToDouble();
    secondCValue = result;
  }

  static void palluValueCal() {
    double pallu = double.parse(palluTextFiledController.text);
    double result = (pallu * 7).roundToDouble();
    palluValue = result;
  }

  static void sktValueCal() {
    double skt = double.parse(sktTextFiledController.text);
    double result = (skt * 11).roundToDouble();
    sktValue = result;
  }

  static void resultValueCal() {
    double rate = double.parse(rateTextFiledController.text);
    double result = (firstCValue + secondCValue + palluValue + sktValue) * rate;
    resultTextFiledController.text = result.toString();
    resultValue = result;
    rateValue = rate;
  }

  static void savedAllData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("firstCValue", firstCTextFiledController.text);
    pref.setString("secondCValue", secondCTextFiledController.text);
    pref.setString("palluValue", palluTextFiledController.text);
    pref.setString("sktValue", sktTextFiledController.text);
    pref.setString("rateValue", rateTextFiledController.text);
    pref.setString("resultValue", resultTextFiledController.text);
  }

  static loadAllData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    firstCTextFiledController.text = pref.getString("firstCValue") ?? "0";
    secondCTextFiledController.text = pref.getString("secondCValue") ?? "0";
    palluTextFiledController.text = pref.getString("palluValue") ?? "0";
    sktTextFiledController.text = pref.getString("sktValue") ?? "0";
    rateTextFiledController.text = pref.getString("rateValue") ?? "0";
    resultTextFiledController.text = pref.getString("resultValue") ?? "0";
  }

  static void cal() {
    firstCValueCal();
    secondCvalueCal();
    palluValueCal();
    sktValueCal();
    resultValueCal();
    savedAllData();
  }
}
