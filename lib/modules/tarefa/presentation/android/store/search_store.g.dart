// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchStore on SearchBase, Store {
  late final _$todosAtom = Atom(name: 'SearchBase.todos', context: context);

  @override
  List<ToDo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(List<ToDo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  @override
  String toString() {
    return '''
todos: ${todos}
    ''';
  }
}
