import 'package:flutter/material.dart';
import 'package:flutter_learn/200/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8();

  @override
  void initState() {
    super.initState();

    final user1 = PostModel()
      ..userID = 1
      ..body = 'abdullah';
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'abdullah', 'aysavki');
    user2.body = 'ayşavkı';

    final user3 = PostModel3(1, 2, 'abdullah', 'aysavki');

    final user4 = PostModel4(
      userID: 1,
      id: 2,
      title: 'abdullah',
      body: 'aysavki',
    );

    final user5 = PostModel5(
      userId: 1,
      id: 2,
      title: 'abdullah',
      body: 'aysavki',
    );

    final user6 = PostModel6(
      userId: 1,
      id: 2,
      title: 'abdullah',
      body: 'aysavki',
    );

    final user7 = PostModel7();

    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'b');
          });
        },
      ),
      appBar: AppBar(title: Text(user9.title ?? 'Not has any data!')),
    );
  }
}
