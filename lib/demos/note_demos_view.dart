import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/100/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _text = 'Create Your First Note';
  final _description = 'Add a Note';
  final _createNote = 'Create a Note';
  final _importNote = 'İmport Notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 213, 213),
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),

      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Image.asset(ImageItems().appleWithBook),
            _TitleWidget(text: _text),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: Text(
                _description * 9,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Spacer(),

            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                height: ButtonHeights.buttonNormalHeight,
                child: Center(
                  child: Text(
                    _createNote,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
            ),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(
    horizontal: 15,
  );

  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 15);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
