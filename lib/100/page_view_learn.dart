import 'package:flutter/material.dart';
import 'package:flutter_learn/100/image_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  int _curretPageIndex = 0;
  void _UptadePageIndex(int index) {
    setState(() {
      _curretPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(viewportFraction: 0.8);
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(_curretPageIndex.toString()),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: _DurationUtility._durationease,
                  curve: Curves.easeInOut,
                );
              },
              child: Icon(Icons.chevron_left),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                duration: _DurationUtility._durationease,
                curve: Curves.easeInOut,
              );
            },
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),

      appBar: AppBar(),
      body: PageView(
        onPageChanged: _UptadePageIndex,
        controller: _pageController,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          ImageLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationease = Duration(milliseconds: 500);
}
