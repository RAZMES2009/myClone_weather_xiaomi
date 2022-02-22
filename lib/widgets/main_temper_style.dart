import 'package:flutter/material.dart';

class MainTemperStyle extends StatelessWidget {
  const MainTemperStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '1',
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
            Column(
              children: const [
                Text(
                  '\u2103',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                SizedBox(
                  height: 45,
                )
              ],
            )
          ],
        ),
        const Text(
          'Rain',
          style: TextStyle(fontSize: 36, color: Colors.white),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('AQI 18', style: TextStyle(fontSize: 15),),
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(134, 41, 41, 41),
            fixedSize: Size(
                MediaQuery.of(context).size.width * 0.2, MediaQuery.of(context).size.height * 0.01),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ],
    );
  }
}
