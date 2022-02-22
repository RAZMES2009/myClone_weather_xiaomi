import 'package:flutter/material.dart';

class CardTemperDays extends StatelessWidget {
  const CardTemperDays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final weatherMap = [
      {'Today·Rain': '3° / 0°'},
      {'Tommorow·cloudy': '3° / -1°'},
      {'Thu·Rain': '0° / -2°'}
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: mediaQuery.size.width * 0.7),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'more details >',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
        Card(
          elevation: 0,
          color: const Color.fromARGB(0, 0, 0, 0),
          child: SizedBox(
            width: mediaQuery.size.width,
            height: mediaQuery.size.height * 0.2,
            child: ListView(
              children: List.generate(
                3,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: mediaQuery.size.width * 0.6,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.cloud,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                weatherMap.elementAt(index).keys.single,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          weatherMap.elementAt(index).values.single,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('5-day forecast'),
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(134, 41, 41, 41),
            fixedSize: Size(
                mediaQuery.size.width * 0.8, mediaQuery.size.height * 0.05),
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
