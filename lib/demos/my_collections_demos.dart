import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _CardCategory(items: _items, index: index);
        },
      ),
    );
  }
}

class _CardCategory extends StatelessWidget {
  const _CardCategory({
    Key? key,
    required List<CollectionModel> items,
    required int index,
  }) : _items = items,
       _index = index,
       super(key: key);

  final List<CollectionModel> _items;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  _items[_index].imagePath,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_items[_index].title),
                  Text('${_items[_index].price} eth'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
        imagePath: ProjectImages.imageCollection,
        title: ProjectText().artText,
        price: ProjectPrice().price,
      ),
      CollectionModel(
        imagePath: ProjectImages.imageCollection,
        title: ProjectText().artText + ' 2',
        price: ProjectPrice().price,
      ),
      CollectionModel(
        imagePath: ProjectImages.imageCollection,
        title: ProjectText().artText + ' 3',
        price: ProjectPrice().price,
      ),
      CollectionModel(
        imagePath: ProjectImages.imageCollection,
        title: ProjectText().artText + ' 4',
        price: ProjectPrice().price,
      ),
    ];
  }
}

class PaddingUtility {
  final paddingBottom = EdgeInsets.only(bottom: 20);
  final paddingAll = EdgeInsets.all(20.0);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollection = 'assets/art_demo.png';
}

class ProjectText {
  final String artText = 'Abstract Art';
}

class ProjectPrice {
  final double price = 3.4;
}
