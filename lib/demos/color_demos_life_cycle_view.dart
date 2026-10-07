import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/color_demos_view.dart';

class ColorsLifeCyle extends StatefulWidget {
  const new({super.key});

  @override
  State<ColorsLifeCyle> createState() => _ColorsLifeCyleState();
}

class _ColorsLifeCyleState extends State<ColorsLifeCyle> {
  @override
  Color? _backgroundColor = Colors.transparent;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: _changeBackground, icon: Icon(Icons.clear)),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorDemos(initialColor: _backgroundColor)),
        ],
      ),
    );
  }

  void _changeBackground() {
    setState(() {
      _backgroundColor = Colors.purple;
    });
  }
}
