import 'package:flutter/material.dart';
import 'package:foody_app/screens/products_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        theme: ThemeData.light().copyWith(
          floatingActionButtonTheme:
          ThemeData.light().floatingActionButtonTheme.copyWith(
            backgroundColor: Colors.orange,
          ),
        ),
      home: ProductOverviewScreen(),
    );
  }
}


