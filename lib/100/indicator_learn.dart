import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Center(child: CenterCircleProgress())]),
      body: Center(child: CenterCircleProgress()),
    );
  }
}

class CenterCircleProgress extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}
