import 'package:flutter/material.dart';

import './widgets/main_temperature.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageWeather(),
    );
  }
}

class HomePageWeather extends StatelessWidget {
  const HomePageWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        leading: Builder(builder: ((context) {
          return IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          );
        })),
        title: const Text('Moscow'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        children: const[
          MainTemperature(),
        ],
      ),
    );
  }
}
