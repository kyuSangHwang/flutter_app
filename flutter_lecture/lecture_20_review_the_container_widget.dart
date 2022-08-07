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
      backgroundColor: Colors.blue,
      body: SafeArea( // 개발자가 보여지기를 원하는 컨텐츠가 화면 밖으로 빠져나가지 않게 경계를 지정해줌
        /* --Container--
        Container Widget 은 무조건 페이지 내에서 최대한의 공간을 차지하려 한다는 의미
        Children 가 없을 경우 Container 는 할 수 있는 만큼 최대한의 공간을 활용한다.
        Container 는 오직 하나만의 child 를 갖는다.
        Flutter 에는 Multi child 와 Single child 를 갖을 수 있는 Widget 이 확연한 만큼 이또한 잘 기억할 것.
        */
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: const EdgeInsets.symmetric( // symmetric 은 대칭적인 이라는 의미로 수평(horizontal), 수직(vertical)을 기준으로 여백지정이 가능
            vertical: 50,
            horizontal: 10,
          ),
          padding: const EdgeInsets.all(20),
          child: const Text('Hello'),
        ),
      ),
    );
  }
}
