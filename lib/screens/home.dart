import 'package:flutter/cupertino.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomePageState();

}

class HomePageState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(builder: (BuildContext context) {
      return const Center(
          child: Text("Home")
      );
    });
  }



}
