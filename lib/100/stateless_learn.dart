import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  final String text4 = 'Ben de iyiyim.';
  final String text1 = 'SelamünAleyküm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleText(text: text1),
          TitleText(text: 'Nasılsın?'),
          TitleText(text: 'İyiyim, sen?'),
          TitleText(text: text4),
          TitleText(text: 'Güzel.'),
          SizedBox(height: 20),

          CustomContainer(),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

//Text classı
class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }
}
