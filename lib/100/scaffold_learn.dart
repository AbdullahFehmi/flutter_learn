import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Learn Samples'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: const Text('Merhaba'),
      backgroundColor: Colors.indigoAccent,

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_comment),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      drawer: Drawer(
        child: Column(
          children: const [
            DrawerHeader(child: Text('Header')),
            ListTile(title: Text('Hesap'), leading: Icon(Icons.home)),
            ListTile(title: Text('Ayarlar'), leading: Icon(Icons.settings)),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
