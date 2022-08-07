import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
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
        title: const Text('AppBar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
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

      /**
        #Drawer
          - Drawer 를 추가하면 왼쪽 상단에 menu(hamBerger)가 자동으로 추가.
          - Drawer 는 햄버거메뉴 버튼을 누르게 되면 옆에서 창이 나타나면서 추기적인 내용을 작성 할 수 있는 기능.
            drawer 를 만들게 되면 appBar 시작 부분에 자동으로 햄버거 메뉴가 생성.
        #ListView & ListTile
          - ListView Widget 은 복수의 위젯을 나열하는 위젯리스트가 children 속성을 통해서 호출됩니다.
            그 하나하나의 List 를 ListTile 이라고 한다. ListTile 안에는 "icon, title, button" 등이 사용됩니다.
          - Flutter 는 이런 요소들을 Padding, Margin 등의 값을 신경쓰지 않고 배치할 수 있도록 ListTile Widget 을 제공.
       **/
      drawer: Drawer(
        child: ListView( //
          padding: EdgeInsets.zero, // 헤더 부분을 넣으면 위에 칸이 남아서 padding: EdgeInsets.zero 를 넣어서 꽉 찬 헤더를 보여줍니다.
          children: <Widget> [ // ListView 는 여러줄의 목록을 보여주는 목록이기에 child 가 아니라 children 를 사용.
            UserAccountsDrawerHeader( // drawer 의 헤더부분으로 DrawerHeader 도 있지만 저는 accountName, accountEmail, currentAccountPicture 이 포함된 UserAccountsDrawerHeader 을 사용.
              currentAccountPicture: const CircleAvatar( //
                backgroundImage: AssetImage('assets/wallace_and_gromit_02.jpg'),
                backgroundColor: Colors.white,
              ),
              accountName: const Text('Wallace And Gromit'), //required
              accountEmail: const Text('kyusang.dev@gmail.com'), //required
              onDetailsPressed: () {
                if (kDebugMode) {
                  print('arrow is clicked');
                }
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


