import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.cyan)),
                Expanded(child: Container(color: Colors.deepPurpleAccent)),
                Expanded(child: Container(color: Colors.blueGrey)),
              ],
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text('a1'), Text('a2'), Text('a3')],
            ),
          ),
          SizedBox(
            height: ProjectContainerSize.cardHeight,

            child: Column(
              children: [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectContainerSize {
  static const double cardHeight = 200;
}
