import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const new({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) {
          return Divider(color: Colors.white, height: 1);
        },
        itemBuilder: (context, index) {
          print(index);
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network('https://picsum.photos/200')),

                Text('$index'),
              ],
            ),
          );
        },
      ),
    );
  }
}
