import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

part 'database.g.dart';

class Words extends Table {
  IntColumn get id => integer()();

  TextColumn get strQuestion => text()();

  TextColumn get strAnswer => text()();

  BoolColumn get isMemorized => boolean().withDefault(Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [Words])
class MyDatabase extends _$MyDatabase {
  final String dbPath;

  MyDatabase({required this.dbPath}) : super(_openConnection(dbPath));

  @override
  int get schemaVersion => 1;

  Future<List<Word>> get allWords => select(words).get();
}

LazyDatabase _openConnection(String dbPath) {
  return LazyDatabase(() async {
    final file = File(dbPath);
    return NativeDatabase(file);
  });
}
