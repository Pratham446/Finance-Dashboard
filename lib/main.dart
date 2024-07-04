import 'package:fdashboard/Config/Responsive.dart';
import 'package:fdashboard/Screens/mobilescreen.dart';
import 'package:fdashboard/Screens/webscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Responsive(mobilescreen: Mobilescreen(), webscreen: webscreen()),
    );
  }
}
