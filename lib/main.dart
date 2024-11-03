
import 'package:flutter/material.dart';
import 'package:hiy/page/feed.dart';

void main()
{
  runApp(travel());
}
class travel extends StatelessWidget {
  const travel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("TRIPTALES",
              style: TextStyle(fontSize:40 ,color: Colors.white),),
            backgroundColor: Colors.teal,
          ),
          body:triptales()
      ),
    );
    return const Placeholder();
  }
}