import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final ImgUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {},
                title: const RandomImage(),
                dense: true,
                subtitle: Text('Bu kartı nasıl kullamak istersin ?'),
                leading: Icon(Icons.money),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
