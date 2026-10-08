import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _MyTabViews.values.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double _notchMargin = 10.0;
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _tabController.animateTo(_MyTabViews.home.index);
        },
        shape: const CircleBorder(),
        child: const Text('Home'),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: _notchMargin,
        shape: const CircularNotchedRectangle(),
        child: _myTabView(),
      ),
      body: _tapbarView(),
    );
  }

  TabBar _myTabView() {
    return TabBar(
      controller: _tabController,
      onTap: (int index) {},
      tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList(),
    );
  }

  TabBarView _tapbarView() {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        Container(color: Colors.white),
        Container(color: Colors.blue),
        Container(color: Colors.greenAccent),
        Container(color: Colors.yellow),
      ],
    );
  }
}

enum _MyTabViews { home, settings, profile, favorite }

extension _MyTabViewExtensions on _MyTabViews {}
