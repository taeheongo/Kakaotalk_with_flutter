import 'package:flutter/material.dart';
import 'package:kakao_talk/screens/chat_screen.dart';
import 'package:kakao_talk/screens/friends_screen.dart';
import 'package:kakao_talk/screens/hash_screen.dart';
import 'package:kakao_talk/screens/more_screen.dart';
import 'package:kakao_talk/theme/colors.dart';
import 'package:kakao_talk/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final lightTheme = buildKakaoLightTheme();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var _items = [
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.person),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.chat),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: ImageIcon(
          AssetImage('images/hash.png'),
          size: 17.0,
        ),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.more_horiz_sharp),
      ),
    ];

    var _bottomNavigationBar = BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTap,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: 0,
      selectedFontSize:
          0, // The BottomNavigationBar's BottomNavigationBarItems have fixed width.
      items: _items,
    );

    var _appbar = AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Center(
          child: Text(
            "친구",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          constraints: BoxConstraints(maxWidth: 40),
        ),
        IconButton(
          icon: Icon(Icons.person_add_rounded),
          onPressed: () {},
          constraints: BoxConstraints(maxWidth: 40),
        ),
        IconButton(
          icon: Icon(Icons.music_note_sharp),
          onPressed: () {},
          constraints: BoxConstraints(maxWidth: 40),
        ),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
          constraints: BoxConstraints(maxWidth: 40),
        ),
      ],
    );
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: _appbar,
        body: SafeArea(
          minimum: const EdgeInsets.all(8.0),
          child: IndexedStack(
            index: _currentIndex,
            children: <Widget>[
              FriendsScreen(),
              ChatScreen(),
              HashScreen(),
              MoreScreen()
            ],
          ),
        ),
        bottomNavigationBar: _bottomNavigationBar,
      ),
      theme: lightTheme,
    );
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _toggleTheme() {
    setState(() {
      // change the themedata
    });
  }
}
