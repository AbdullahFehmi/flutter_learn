import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const new({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListViewLearn')),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge
                  ?.copyWith(fontWeight: FontWeight.w100),
              maxLines: 1,
            ),
          ),
          Container(height: 300, color: Colors.blue),
          Divider(color: Colors.black, thickness: 2),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 100, color: Colors.red),
                Container(width: 100, color: Colors.green),
                Container(width: 100, color: Colors.blue),
                Container(width: 100, color: Colors.red),
                Container(width: 100, color: Colors.green),
                Container(width: 100, color: Colors.blue),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),

          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge
                  ?.copyWith(fontWeight: FontWeight.w100),
              maxLines: 1,
            ),
          ),
          Container(height: 300, color: Colors.blue),
          Divider(color: Colors.black, thickness: 2),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 100, color: Colors.red),
                Container(width: 100, color: Colors.green),
                Container(width: 100, color: Colors.blue),
                Container(width: 100, color: Colors.red),
                Container(width: 100, color: Colors.green),
                Container(width: 100, color: Colors.blue),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          _listDemo(),
        ],
      ),
    );
  }
}

class _listDemo extends StatefulWidget {
  const new({super.key});

  @override
  State<_listDemo> createState() => __listDemoState();
}

class __listDemoState extends State<_listDemo> {
  @override
  void initState() {
    super.initState();
    print('hello');
  }

  dispose() {
    super.dispose();
    print('bye');
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
