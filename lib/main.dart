import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/100/navigation_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.red),
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.teal,
          error: Colors.red,
        ),
        cardTheme: CardThemeData(
          color: const Color(0xFF2B3038),
          elevation: 4,
          shadowColor: Colors.black54,
          surfaceTintColor: Colors.transparent,
        ),
        listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
        ),
      ),
      home: NavigationLearn(),
    );
  }
}
