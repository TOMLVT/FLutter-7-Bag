import 'package:bag_app/Home/home_screen.dart';
import 'package:bag_app/constrant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
       visualDensity: VisualDensity.adaptivePlatformDensity, // tự động điều chỉnh cho tương thích với thiết bi
      ),
      home: const HomeScreen(),
    );
  }
}

