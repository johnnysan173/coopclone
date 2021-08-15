import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coop Clone',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.pink[200],
        textTheme: TextTheme(),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                bottom: createTabBar(),
                title: Text('コープのお店',
                    style: TextStyle(fontSize: 20, color: Colors.pink[200]))),
            body: TabBarView(
              children: [
                IzumiPage(),
                IzumiPage(),
                IzumiPage(),
              ],
            ),
            bottomNavigationBar: Footer()));
  }

  TabBar createTabBar() {
    return TabBar(
      labelPadding: EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
      // labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
      indicatorSize: TabBarIndicatorSize.values[0],
      indicatorWeight: 5,
      indicatorColor: Colors.pink[200],
      labelColor: Colors.pink[200],
      unselectedLabelColor: Colors.grey,

      tabs: [
        Row(children: [
          Icon(Icons.storefront_outlined),
          SizedBox(width: 10),
          Text("泉佐野店")
        ]),
        Row(children: [
          Icon(Icons.storefront_outlined),
          SizedBox(width: 10),
          Text("若江店")
        ]),
        Row(children: [
          Icon(Icons.storefront_outlined),
          SizedBox(width: 10),
          Text("城山店")
        ]),
      ],
      isScrollable: true,
    );
  }
}

class Footer extends StatefulWidget {
  const Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "ホーム"),
        BottomNavigationBarItem(icon: Icon(Icons.storefront), label: "お店"),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping_outlined), label: "宅配"),
        BottomNavigationBarItem(
            icon: Icon(Icons.directions_walk_outlined), label: "あるプラ"),
      ],
      iconSize: 25,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      currentIndex: 1,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.pink[200],
      unselectedItemColor: Colors.black45,
    );
  }
}

class IzumiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(height: 5),
      // Text('Test'),
      Image.asset('assets/images/campaign.png'),
      Divider(
        height: 50,
        thickness: 20,
        color: Colors.grey[200],
      ),
      Image.asset(
        'assets/images/content.png',
        width: MediaQuery.of(context).size.width / 2,
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/chirashi.png',
            width: MediaQuery.of(context).size.width / 3 - 20,
          ),
          Image.asset(
            'assets/images/otoku.png',
            width: MediaQuery.of(context).size.width / 3 - 20,
          ),
          Image.asset(
            'assets/images/oshirase.png',
            width: MediaQuery.of(context).size.width / 3 - 20,
          ),
        ],
      ),
      Divider(
        height: 50,
        thickness: 20,
        color: Colors.grey[200],
      ),

      Image.asset(
        'assets/images/shop.png',
        width: MediaQuery.of(context).size.width / 2,
      ),
      SizedBox(height: 20),
      Row(
        children: [
          SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.blue,
              child: Image.asset(
                'assets/images/shoppic.png',
                width: MediaQuery.of(context).size.width / 2,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
                // color: Colors.green,

                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('コープ泉佐野店'),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.room,
                            color: Colors.grey[300],
                            size: 15,
                          ),
                          Text(
                            '泉佐野市市場西3-2-45',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ])),
          ),
          SizedBox(width: 20),
        ],
      ),
      Divider(
        height: 30,
        thickness: 1,
        color: Colors.grey[200],
      ),
      Row(
        children: [
          SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Container(
                // color: Colors.blue,
                child: Text('電話番号')),
          ),
          Expanded(
            flex: 7,
            child: Container(
                // color: Colors.green,

                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('072-488-7126'),
                    ])),
          ),
          SizedBox(width: 20),
        ],
      ),
      Divider(
        height: 30,
        thickness: 1,
        color: Colors.grey[200],
      ),
      Row(
        children: [
          SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Container(
                // color: Colors.blue,
                child: Text('営業時間')),
          ),
          Expanded(
            flex: 7,
            child: Container(
                // color: Colors.green,

                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('9時00分〜22時00分'),
                      SizedBox(height: 5),
                      Text(
                        '※臨時で営業時間が変更になる場合がございます。',
                        style: TextStyle(fontSize: 10),
                      )
                    ])),
          ),
          SizedBox(width: 20),
        ],
      ),
      Divider(
        height: 30,
        thickness: 1,
        color: Colors.grey[200],
      ),
      Row(
        children: [
          SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Container(
                // color: Colors.blue,
                child: Text(
              '駐車場',
              style: TextStyle(fontWeight: FontWeight.normal),
            )),
          ),
          Expanded(
            flex: 7,
            child: Container(
                // color: Colors.green,

                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('202台'),
                    ])),
          ),
          SizedBox(width: 20),
        ],
      ),
      Divider(
        height: 30,
        thickness: 1,
        color: Colors.grey[200],
      ),
      // Text('Test')
    ]));
  }
}

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
        title: Text('リスト一覧'),
      ),
      // ListViewを使いリスト一覧を表示
      body: ListView(
        children: <Widget>[
          // *** 追加する部分 ***
          // CardとListTileを使い、簡単に整ったUIを作成
          Card(
            child: ListTile(
              title: Text('ニンジンを買う'),
            ),
          ),
          Row(
            children: <Widget>[
              Text('first row'),
              Text('second row'),
              Text('third row'),
            ],
          ),
          Card(
            child: ListTile(
              title: Text('タマネギを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ジャガイモを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('カレールーを買う'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // --- 省略 ---
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
