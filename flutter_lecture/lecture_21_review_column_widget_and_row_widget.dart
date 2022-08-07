import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Message',
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
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Container(
              height: 100,
              color: Colors.white,
              child: const Text('Container 1'),
            ),
            const SizedBox(
              width: 30.0,
              height: 5.0,
            ),
            Container(
              height: 100,
              color: Colors.blue,
              child: const Text('Container 2'),
            ),
            const SizedBox(
              width: 30.0,
              height: 5.0,
            ),
            Container(
              height: 100,
              color: Colors.red,
              child: const Text('Container 3'),
            ),
          ],
        ),
      ),
    );
  }
}

/*

### Column Widget 의 가장 큰 특징
- 세로축으로는 가능한 모든 공간을 차지하고 가로축으로는 children 의 가로크기로 제한이 된다.
- 특히 Center Widget 의 Child Widget 으로 Column Widget 이 왔을 경우 이 개념을 잘 이해하고 mainAxisAlignment 속성을 잘 이해해야 Column Widget 을 정중앙에 위치시킬 수 있다.
    - 또, Column Widget 은 세로축으로 가능한 모든 공간을 차지하려하기에 여백에 대해서 제한을 주려면
      mainAxisSize 을 통해서 MainAxisSize.min 속성을 부여하면 Child Widget 의 크기만큼으로 제한을 줄 수 있다.

- Column, Row
  - Column : 가로축 정렬
  - Row : 세로축 정렬
- verticalDirection : child widget 을 세로로 배치하는 순서와 세로 방향으로 시작과 끝을 결정한다.
    - 속성 .up .down 이 있고 default → down 이다.
- width: double.infinity, : Container Widget(꼭 Container 일 필요는 없음) 의 가로의 넓이를 최대값을 갖게 한다.
- CrossAxisAlignment.stretch
  - Row 일 떄, child widget 의 height 을 꽉 체운다
  - Column 일 때, child widget 의 width 을 꽉 채운다

*/