import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            color: Theme.of(context).colorScheme.error,
            margin: ProjectsMargins.cardMargin,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text('Abdullah')),
            ),
          ),
          Card(
            color: Colors.white,
            margin: ProjectsMargins.cardMargin,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Center(child: Text('John', style: TextStyle(color: Colors.black))),
            ),
          ),
          _CustomCard(
            child: const SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text('Abdullah')),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectsMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  final Widget child;

  const _CustomCard({required this.child});
  @override
  Widget build(BuildContext context) {
    final roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    );
    return Card(
      color: Theme.of(context).colorScheme.error,
      margin: ProjectsMargins.cardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}
