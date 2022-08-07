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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/wallace_and_gromit_02.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const <Widget> [ // currentAccountPicture 와 달리 복수형으로 한 개 이상의 계정을 추가할 수 있다.
                CircleAvatar(
                  backgroundImage: AssetImage('assets/wallace_and_gromit.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/wallace_and_gromit.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: const Text('Wallace And Gromit'),
              accountEmail: const Text('kyusang.dev@gmail.com'),
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
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.grey[850],
              ),
              title: const Text('Home'),
              onTap: (){
                if (kDebugMode) {
                  print('Home is clicked');
                }
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: const Text('Settings'),
              onTap: (){
                if (kDebugMode) {
                  print('Settings is clicked');
                }
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: const Text('Q&A'),
              onTap: (){
                if (kDebugMode) {
                  print('Q&A is clicked');
                }
              },
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

/*

### Drawer menu
- Drawer 를 추가하면 왼쪽 상단에 hamburger menu 가 자동으로 추가된다.
- Drawer 는 햄버거 메뉴 버튼을 누르게 되면 옆에서 창이 나타나면서 추기적인 내용을 작성 할 수 있는 기능을 말합니다.
  drawer 를 만들게 되면 appBar 시작 부분에 자동으로 햄버거 메뉴가 생성이 됩니다
- ListView 위젯은 복수의 위젯을 나열하는 위젯리스트가 children 속성을 통해서 호출됩니다.
  그 하나하나의 List 를 ListTile 이라고 합니다.
  ListTile 안에는 `icon, title, button` 등이 사용됩니다.
  Flutter 는 이런 요소들을 Padding 이나 Margin 값을 신경쓰지 않고 배치할 수 있도록 ListTile 이라는 Widget 을 제공.

## onPressed 와 onTap 의 차이
기능상으로 거의 동일하며 차이는 아래와 같습니다.
- onPressed 는 기능 버튼에 주로 사용
- onTap 은 길게 누르거나 두번 누르기에 사용

### ListTile 에서 onTap 함수가 사용되는 이유
일반 Button 과는 달리 ListTile Widget 은 tap 하거나 길게누르기 등 action 을 감지할 수 있는 기능을 가지고 있기 때문 또한 각 메뉴를 클릭하면 스플레시 효과가 나타나는데 기본적으로 ListTile에 Build in 되어 있는 애니메이션이다.

## 기능 정리
- trailing : leading 이라는 반대로 끝부분에 위치하는 기능
- decoration : 위젯을 꾸밀때 사용하는 기능
- BoxDecoration : 꾸밀 때 사용하는 기능
- AssetImage : 자원의 저장된 파일을 불러올 때 사용하는 기능
- CircleAvatar : 원형의 모양을 제공하고 싶을 때 사용하는 기능
- UserAccountsDrawerHeader : 유저의 정보를 기본적으로 제공하는 기능을 사용하는 기능
- Drawer : 메뉴바를 만들고 싶을 때 사용하는 기능

*/