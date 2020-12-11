import 'package:flutter/material.dart';
import 'package:weather_app/pages/pages.dart';
import 'package:weather_app/shared/shared.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        accentColor: Colors.white12,
        accentColorBrightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: primaryColor,
          ),
          onPressed: () {},
        ),
        title: Text(
          appName,
          style: normalFontStyle,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: primaryColor,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: MainContent(),
    );
  }
}
