//Bir ekran olacak
//Bu ekranda 3 tane buton olacak ve bu butonlara basıldığında ekranda renk değişecek
//Seçili olan buton selected icon ile gösterilecek

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const new({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;

  initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    print(
      widget.initialColor != _backgroundColor && widget.initialColor != null,
    );
    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      _changeBackgroundColor(widget.initialColor!);
    }
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorLogicOnTap,
        items: [
          BottomNavigationBarItem(
            icon: _ColorsContainer(color: Colors.red),
            label: 'Red',
          ),

          BottomNavigationBarItem(
            icon: _ColorsContainer(color: Colors.yellow),
            label: 'Yellow',
          ),

          BottomNavigationBarItem(
            icon: _ColorsContainer(color: Colors.blue),
            label: 'Blue',
          ),
        ],
      ),
    );
  }

  void _colorLogicOnTap(int value) {
    if (value == _MyColors.red.index) {
      _changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      _changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      _changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorsContainer extends StatelessWidget {
  const _ColorsContainer({super.key, required this.color});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}
