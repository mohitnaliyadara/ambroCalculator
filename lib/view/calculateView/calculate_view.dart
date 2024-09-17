import 'package:calculator1/res/appColors/app_colors.dart';
import 'package:calculator1/viewModel/controller/app_cotroller.dart';
import 'package:calculator1/viewModel/widgets/button/elavated_custom_button.dart';
import 'package:calculator1/viewModel/widgets/textfield/first_textfirld_c.dart';
import 'package:calculator1/viewModel/widgets/textfield/pallu_text_field.dart';
import 'package:calculator1/viewModel/widgets/textfield/rate_text_filed.dart';
import 'package:calculator1/viewModel/widgets/textfield/result_text_filed.dart';
import 'package:calculator1/viewModel/widgets/textfield/second_text_field_c.dart';
import 'package:calculator1/viewModel/widgets/textfield/skt_text_field.dart';
import 'package:flutter/material.dart';

class CalculateView extends StatefulWidget {
  const CalculateView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalculateViewState createState() => _CalculateViewState();
}

class _CalculateViewState extends State<CalculateView> {
  @override
  void initState() {
    super.initState();
    AppCotroller.loadAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculate",
          style: TextStyle(color: AppColors.appFontColor, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FirstTextfirldC(
                    marginTop: 30,
                    title: "C",
                    controller: AppCotroller.firstCTextFiledController,
                  ),
                  SecondTextFieldC(
                    marginTop: 30,
                    title: "C",
                    controller: AppCotroller.secondCTextFiledController,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PalluTextFiled(
                    marginTop: 30,
                    title: "Pallu",
                    controller: AppCotroller.palluTextFiledController,
                  ),
                  SktTextField(
                    marginTop: 30,
                    title: "SKT",
                    controller: AppCotroller.sktTextFiledController,
                  ),
                ],
              ),
              RateTextFiled(
                  title: "Rate",
                  controller: AppCotroller.rateTextFiledController),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: AppColors.textFieldLableColor,
                height: 1,
                endIndent: 10,
                thickness: 1,
                indent: 10,
              ),
              ResultTextField(
                title: "Result",
                controller: AppCotroller.resultTextFiledController,
                enable: false,
              ),
              ElavatedCustomButton(
                onPress: () {
                  AppCotroller.cal();
                },
                title: 'Calculate',
                marginTop: 200,
                backColor: AppColors.textFiledFocusColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
