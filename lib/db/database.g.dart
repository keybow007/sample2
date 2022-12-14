// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Word extends DataClass implements Insertable<Word> {
  final int id;
  final String strQuestion;
  final String strAnswer;
  final bool isMemorized;
  const Word(
      {required this.id,
      required this.strQuestion,
      required this.strAnswer,
      required this.isMemorized});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['str_question'] = Variable<String>(strQuestion);
    map['str_answer'] = Variable<String>(strAnswer);
    map['is_memorized'] = Variable<bool>(isMemorized);
    return map;
  }

  WordsCompanion toCompanion(bool nullToAbsent) {
    return WordsCompanion(
      id: Value(id),
      strQuestion: Value(strQuestion),
      strAnswer: Value(strAnswer),
      isMemorized: Value(isMemorized),
    );
  }

  factory Word.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Word(
      id: serializer.fromJson<int>(json['id']),
      strQuestion: serializer.fromJson<String>(json['strQuestion']),
      strAnswer: serializer.fromJson<String>(json['strAnswer']),
      isMemorized: serializer.fromJson<bool>(json['isMemorized']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'strQuestion': serializer.toJson<String>(strQuestion),
      'strAnswer': serializer.toJson<String>(strAnswer),
      'isMemorized': serializer.toJson<bool>(isMemorized),
    };
  }

  Word copyWith(
          {int? id,
          String? strQuestion,
          String? strAnswer,
          bool? isMemorized}) =>
      Word(
        id: id ?? this.id,
        strQuestion: strQuestion ?? this.strQuestion,
        strAnswer: strAnswer ?? this.strAnswer,
        isMemorized: isMemorized ?? this.isMemorized,
      );
  @override
  String toString() {
    return (StringBuffer('Word(')
          ..write('id: $id, ')
          ..write('strQuestion: $strQuestion, ')
          ..write('strAnswer: $strAnswer, ')
          ..write('isMemorized: $isMemorized')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, strQuestion, strAnswer, isMemorized);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Word &&
          other.id == this.id &&
          other.strQuestion == this.strQuestion &&
          other.strAnswer == this.strAnswer &&
          other.isMemorized == this.isMemorized);
}

class WordsCompanion extends UpdateCompanion<Word> {
  final Value<int> id;
  final Value<String> strQuestion;
  final Value<String> strAnswer;
  final Value<bool> isMemorized;
  const WordsCompanion({
    this.id = const Value.absent(),
    this.strQuestion = const Value.absent(),
    this.strAnswer = const Value.absent(),
    this.isMemorized = const Value.absent(),
  });
  WordsCompanion.insert({
    this.id = const Value.absent(),
    required String strQuestion,
    required String strAnswer,
    this.isMemorized = const Value.absent(),
  })  : strQuestion = Value(strQuestion),
        strAnswer = Value(strAnswer);
  static Insertable<Word> custom({
    Expression<int>? id,
    Expression<String>? strQuestion,
    Expression<String>? strAnswer,
    Expression<bool>? isMemorized,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (strQuestion != null) 'str_question': strQuestion,
      if (strAnswer != null) 'str_answer': strAnswer,
      if (isMemorized != null) 'is_memorized': isMemorized,
    });
  }

  WordsCompanion copyWith(
      {Value<int>? id,
      Value<String>? strQuestion,
      Value<String>? strAnswer,
      Value<bool>? isMemorized}) {
    return WordsCompanion(
      id: id ?? this.id,
      strQuestion: strQuestion ?? this.strQuestion,
      strAnswer: strAnswer ?? this.strAnswer,
      isMemorized: isMemorized ?? this.isMemorized,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (strQuestion.present) {
      map['str_question'] = Variable<String>(strQuestion.value);
    }
    if (strAnswer.present) {
      map['str_answer'] = Variable<String>(strAnswer.value);
    }
    if (isMemorized.present) {
      map['is_memorized'] = Variable<bool>(isMemorized.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WordsCompanion(')
          ..write('id: $id, ')
          ..write('strQuestion: $strQuestion, ')
          ..write('strAnswer: $strAnswer, ')
          ..write('isMemorized: $isMemorized')
          ..write(')'))
        .toString();
  }
}

class $WordsTable extends Words with TableInfo<$WordsTable, Word> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WordsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _strQuestionMeta =
      const VerificationMeta('strQuestion');
  @override
  late final GeneratedColumn<String> strQuestion = GeneratedColumn<String>(
      'str_question', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _strAnswerMeta = const VerificationMeta('strAnswer');
  @override
  late final GeneratedColumn<String> strAnswer = GeneratedColumn<String>(
      'str_answer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _isMemorizedMeta =
      const VerificationMeta('isMemorized');
  @override
  late final GeneratedColumn<bool> isMemorized = GeneratedColumn<bool>(
      'is_memorized', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK ("is_memorized" IN (0, 1))',
      defaultValue: Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, strQuestion, strAnswer, isMemorized];
  @override
  String get aliasedName => _alias ?? 'words';
  @override
  String get actualTableName => 'words';
  @override
  VerificationContext validateIntegrity(Insertable<Word> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('str_question')) {
      context.handle(
          _strQuestionMeta,
          strQuestion.isAcceptableOrUnknown(
              data['str_question']!, _strQuestionMeta));
    } else if (isInserting) {
      context.missing(_strQuestionMeta);
    }
    if (data.containsKey('str_answer')) {
      context.handle(_strAnswerMeta,
          strAnswer.isAcceptableOrUnknown(data['str_answer']!, _strAnswerMeta));
    } else if (isInserting) {
      context.missing(_strAnswerMeta);
    }
    if (data.containsKey('is_memorized')) {
      context.handle(
          _isMemorizedMeta,
          isMemorized.isAcceptableOrUnknown(
              data['is_memorized']!, _isMemorizedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Word map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Word(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      strQuestion: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}str_question'])!,
      strAnswer: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}str_answer'])!,
      isMemorized: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}is_memorized'])!,
    );
  }

  @override
  $WordsTable createAlias(String alias) {
    return $WordsTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $WordsTable words = $WordsTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [words];
}
