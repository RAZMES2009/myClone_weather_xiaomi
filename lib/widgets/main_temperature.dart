import 'package:flutter/material.dart';

import './card_Temper_Days.dart';
import './main_temper_style.dart';

class MainTemperature extends StatelessWidget {
  const MainTemperature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/gifs/rain2.gif'), fit: BoxFit.fill),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          Column(
            children: const [
              SizedBox(height: 150),
              MainTemperStyle(),
              SizedBox(height: 100,),
              CardTemperDays(),
            ],
          ),
        ],
      ),
    );
  }
}
