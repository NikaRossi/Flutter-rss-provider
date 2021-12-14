import 'package:flutter_rss_lecture/src/pages/provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'last24_news_page/last24_news_page.dart';
import 'last_news_page/last_news_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageProvider provider = context.watch<PageProvider>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lenta.ru',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: provider.page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentPageID,
        selectedItemColor: Colors.red[900],
        onTap: provider.openPage,
        items: const [
           BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Свежачок!!!'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports), label: 'Для любителей постарше!')
        ],
      ),
    );
  }
}
