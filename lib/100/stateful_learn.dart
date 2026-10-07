import 'package:flutter/material.dart';
import 'package:flutter_learn/product/counter_hello_button.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;
  int _counterCustom = 0;

  void _uptadeCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue++;
      ;
    } else {
      _countValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(title: Text(LanguageItems.hello_title)),
      
      
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(
            onPressed: () {
              _uptadeCounter(true);
            },
          ),
          _deincrementButtonPadding(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  Padding _deincrementButtonPadding() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: _deincrementButton(
        onPressed: () {
          _uptadeCounter(false);
        },
      ),
    );
  }
}

class _deincrementButton extends StatelessWidget {
  const _deincrementButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.remove),
    );
  }
}

class _incrementButton extends StatelessWidget {
  const _incrementButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}
