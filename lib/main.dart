import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sample2/screens/home_screen.dart';

import 'db/database.dart';

late MyDatabase database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dbPath = await getDbPath();
  database = MyDatabase(dbPath: dbPath);

  runApp(MyApp());
}

Future<String> getDbPath() async {
  var dbDir = await getApplicationDocumentsDirectory();
  var dbPath = join(dbDir.path, "quiz.db");

  if (FileSystemEntity.typeSync(dbPath) == FileSystemEntityType.notFound) {
    ByteData byteData = await rootBundle.load("assets/quiz.db");
    List<int> bytes = byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);
  }
  return dbPath;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sample2",
      home: HomeScreen(),
    );
  }
}
