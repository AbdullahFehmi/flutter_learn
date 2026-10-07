import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String _title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: CustomFoodButton(title: _title),
              ),
            ),
          ),

          SizedBox(height: 100),

          CustomFoodButton(title: _title),
        ],
      ),
    );
  }
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtiliy, _PaddingUtlilty {
  CustomFoodButton({super.key, required this._title});

  final String _title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        shape: StadiumBorder(),
      ),
      onPressed: () {},
      child: Padding(
        padding: normal2xpadding,
        child: Text(
          _title,
          style: Theme.of(context).textTheme.titleMedium
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

mixin _ColorsUtiliy {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

mixin _PaddingUtlilty {
  final normalpadding = EdgeInsets.all(8.0);
  final normal2xpadding = EdgeInsets.all(16.0);
}
