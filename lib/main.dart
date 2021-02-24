import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:css_colors/css_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'الصفحة الاولى '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Scaffold(
      //--------------------------------------------------------------------
      //the first dependencey.
      backgroundColor: CSSColors.pink,
      //--------------------------------------------------------------------
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    ' بواسطة الباكيجات و الديبيندنسي توليد كلمات إنجليزية عشوائية',
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //----------------------------------------------------------------
                //The second dependency
                Text(wordPair.asPascalCase),
                //----------------------------------------------------------------
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                    child: Text(
                      'الذهاب الى الصفحة الثانية',
                      style: TextStyle(color: Colors.black),
                      // Navigate to second route when tapped.
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("الصفحة الثانية"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('الذهاب الى الصفحة الرئيسية'),
          ),
        ],
      ),
    );
  }
}
