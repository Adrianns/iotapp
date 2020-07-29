import 'package:flutter/material.dart';

import 'home/presentation/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IOT App',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          splashColor: Colors.blue[200],
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('IOT APP'),
        ),
        body: HomePage(),
      ),
    );
  }
}
