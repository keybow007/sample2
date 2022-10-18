import 'package:flutter/material.dart';
import 'package:sample2/db/database.dart';
import 'package:sample2/main.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Word> words = [];

  @override
  void initState() {
    _getAllWords();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sample2"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (_, position) => ListTile(
          title: Text(words[position].id.toString()),
          subtitle: Text(words[position].toString()),
        ),
      ),
    );
  }

  void _getAllWords() async {
    words = await database.allWords;
    setState(() {});
  }
}
