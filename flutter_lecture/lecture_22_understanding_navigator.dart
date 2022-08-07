import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Message',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyPage(),
    );
  }
}

// App page 를 구성하기 위한 Scaffold 를 return 하는 모든 custom widget 은 routes 이다.
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to the Second Page'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return const SecondPage();
                }
            ));
            // 위는 하드코딩을 한 것이지만 간단하게 아래 처럼 코딩을 할 수 있다.
            /*Navigator.push(context, MaterialPageRoute(
                builder: (context) => const SecondPage()));*/
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to the First Page'),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}

/*

### Navigator

1. Route 의 개념
    - 단순히 스마트폰에서 보여지는 하나의 페이지 또는 화면

2. Navigator 의 정의와 push, pup 함수, stack 자료구조
    - Navigator 정의
        - Navigator 하는 것은 모든 App Page 들을 관리하며 Stack 이라는 자료구조 형식으로 Route 객체들을 관리한다.
        - 또 Stack 이라는 자료구조를 관리하기 위해서 push, pop 이라는 method 를 정의한다.
    - Stack 자료 구조
        - Stack 은 사전적으로 어떤 물건등을 쌓아 올린다는 의미
        - Data 가 들어오면 밑에서 부터 차곡차곡 쌓여져 간다는 의미
        - push method → 데이터가 들어오면 push method 를 통해서만 Data 를 쌓을 수 있다.
        - pop method → 데이터를 제거하려면 pop method 를 통해서만 Data 를 제거할 수 있다.
    - 정리!!!
        - Flutter 에서 Route(App page 관리)는  Navigator 가 담당을 하고
        - Navigator 는 Route 즉, App page 들을 관리하기 위해서 Data 들 차곡차곡 쌓는 방식의 Stack 자료 구조를 사용한다.
        - 그리고 Stack 자료 구조에서 Data 를 추가할 때는 push method 를 사용하고 Data 를 제거할 때는 pop method 를 사용한다.

3. MaterialPageRoute Widget 과 context
    - Route 는 반드시 MaterialApp Widget 아래에 Child 로 생성되어야 한다.
    - push 함수가 context 를 가지고 있는 이유
        - context 가 가지고 있는 Widget Tree 에 위치 정보에 근거해서 현재 화면상에 보여지는 페이지가 어떤 페이지 인지 확인하고 이 페이지 위에 push 함수가 이동하길 원하는 새로운 routes 를 쌓아올려야 하기 때문이다.
    - *Builder 는 어떤 Widget 이 MaterialPageRoute 의 도움을 받아서 생성되어야할지를 정의 (required)*
    - MaterialPageRoute 는 App 상에서 page 이동을 할 때 Android, iOS Platform 에서 기본적으로 제공되는 Animation 이 있다.
        - Android → 페이지 이동 시 FadeIn 효과, 페이지에서 나갈 때는 FadeOut 효과 내장
        - iOS → 좌우로 화면이 움직이면서 페이지 이동이 되는 Animation 효과가 있다.

4. 페이지 이동 기능 구현 완성

*/