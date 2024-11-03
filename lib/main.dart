
import 'package:flutter/material.dart';
import 'package:hiy/page/instafeed.dart';

void main()
{
  runApp(Instagram());
}
class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("TRIPTALES",
              style: TextStyle(fontSize:40 ,color: Colors.white),),
            backgroundColor: Colors.teal,
          ),
          body:Instagramfeed()
      ),
    );
    return const Placeholder();
  }
}