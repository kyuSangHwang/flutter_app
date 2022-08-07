import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData( // theme: theme 속성은 말그대로 앱의 일괄되는 테마를 정할 수 있다
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
        title: const Text('AppBar icon menu'),
        centerTitle: true, // centerTitle: title 을 센터로 정렬할지 여부 (true/false)
        elevation: 0.0, // elevation: 그림자효과
        leading: IconButton( // leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때 사용하는 기능
          icon: const Icon(Icons.menu),
          onPressed: () { // onPressed: 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곡
            if (kDebugMode) {
              print('menu button is clicked');
            }
          },
        ),
        actions: <Widget>[ // actions: 복수의 아이콘 버튼 등을 오른쪽에 배치할 때 사용하는 기능
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              if (kDebugMode) {
                print('Shopping cart button is clicked');
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              if (kDebugMode) {
                print('Search button is clicked');
              }
            },
          ),
        ],
      ),
    );
  }
}


/**
 *
 *
 *
 *
 *
 *
 *
 * **/