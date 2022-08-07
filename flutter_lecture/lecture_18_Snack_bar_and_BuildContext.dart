import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder( // Builder Widget : 지금까지 사용했던 context 가 무엇이었든 간에 무시하고 새로운 context 로 새로운 위젯을 만든다고 생각하면 된다.
          builder: (BuildContext ctx) {
            return Center(
              child: FlatButton( // App 의 body 부분에서 FlatButton, Raised button, Floating action button 을 자주 사용, 디자인과 모양에 따라서 이름만 다를 뿐 기능은 별 차이없음
                color: Colors.red,
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(const SnackBar(
                    content: Text('Hello'),
                  ));
                },
                child: const Text(
                  'Show me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
    );
  }
}
