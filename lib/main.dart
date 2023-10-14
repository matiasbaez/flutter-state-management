import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:state_management/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'page1',
      // routes: {
      //   'page1': (_) => const Page1(),
      //   'page2': (_) => const Page2(),
      // },
      getPages: [
        GetPage(name: '/page1', page: () => const Page1()),
        GetPage(name: '/page2', page: () => const Page2())
      ],
      home: const Scaffold(),
    );
  }
}
