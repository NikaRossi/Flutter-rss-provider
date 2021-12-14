import 'package:flutter_rss_lecture/src/pages/provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'src/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: ChangeNotifierProvider(
          create: (_) => PageProvider(currentPageID: 0),
          child: const MainPage(),
        ));
  }
}
