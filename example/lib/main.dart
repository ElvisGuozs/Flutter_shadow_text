import 'package:flutter/material.dart';
import 'package:textshadow_widget/textshadow_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shadow Text Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Shadow Text Demo Home Page'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ShadedText(
        text: 'Shadow Text',
        textColor: Color(0xdd333333),
        shadowColor: Color(0xaaaa88aa),
        xTans: 25.0,
        yTans: 15.0,
        shadeBuilder: (BuildContext context, String text, Color) {
          return Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 28.0, color: Color),
            ),
          );
        },
      ),
    );
  }
}
