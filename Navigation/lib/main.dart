import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

// 첫 번째 페이지
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: ElevatedButton(
        child: Text('다음 페이지로'),
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/second');

          print(result);
        },
      ),
    );
  }
}

// 두 번째 페이지
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('SecondPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: ElevatedButton(
        child: Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context, 'ok');
        },
      ),
    );
  }
}
