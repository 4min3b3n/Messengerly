import 'package:flutter/cupertino.dart';

class MessengerlyApp extends StatelessWidget {
  const MessengerlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MessengerlyTabScaffold(),
    );
  }
}

class MessengerlyTabScaffold extends StatelessWidget {
  MessengerlyTabScaffold({super.key});

  final List<BottomNavigationBarItem> _tabs = [
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home, size: 22),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.chat_bubble_text, size: 22),
      label: 'Messages',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person_3, size: 22),
      label: 'Contacts',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.compass, size: 22),
      label: 'Explore',
    )
  ];

  CupertinoTabBar messengerlyTabBar(List<BottomNavigationBarItem> tabs) => CupertinoTabBar(items: tabs);

  Widget messengerlyTabBuilder(BuildContext context, int index) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoSliverNavigationBar(
          largeTitle: Text('$index'),
          
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: messengerlyTabBar(_tabs),
        tabBuilder: messengerlyTabBuilder
    );
  }


}



