// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddTodoStore on AddTodoStoreBase, Store {
  late final _$dataAtom = Atom(name: 'AddTodoStoreBase.data', context: context);

  @override
  String get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(String value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$todoNameAtom =
      Atom(name: 'AddTodoStoreBase.todoName', context: context);

  @override
  String get todoName {
    _$todoNameAtom.reportRead();
    return super.todoName;
  }

  @override
  set todoName(String value) {
    _$todoNameAtom.reportWrite(value, super.todoName, () {
      super.todoName = value;
    });
  }

  late final _$observationTodoAtom =
      Atom(name: 'AddTodoStoreBase.observationTodo', context: context);

  @override
  String get observationTodo {
    _$observationTodoAtom.reportRead();
    return super.observationTodo;
  }

  @override
  set observationTodo(String value) {
    _$observationTodoAtom.reportWrite(value, super.observationTodo, () {
      super.observationTodo = value;
    });
  }

  late final _$colorPickerAtom =
      Atom(name: 'AddTodoStoreBase.colorPicker', context: context);

  @override
  Color get colorPicker {
    _$colorPickerAtom.reportRead();
    return super.colorPicker;
  }

  @override
  set colorPicker(Color value) {
    _$colorPickerAtom.reportWrite(value, super.colorPicker, () {
      super.colorPicker = value;
    });
  }

  late final _$errorNameTodoAtom =
      Atom(name: 'AddTodoStoreBase.errorNameTodo', context: context);

  @override
  String get errorNameTodo {
    _$errorNameTodoAtom.reportRead();
    return super.errorNameTodo;
  }

  @override
  set errorNameTodo(String value) {
    _$errorNameTodoAtom.reportWrite(value, super.errorNameTodo, () {
      super.errorNameTodo = value;
    });
  }

  late final _$hasErroNameTodoAtom =
      Atom(name: 'AddTodoStoreBase.hasErroNameTodo', context: context);

  @override
  bool get hasErroNameTodo {
    _$hasErroNameTodoAtom.reportRead();
    return super.hasErroNameTodo;
  }

  @override
  set hasErroNameTodo(bool value) {
    _$hasErroNameTodoAtom.reportWrite(value, super.hasErroNameTodo, () {
      super.hasErroNameTodo = value;
    });
  }

  late final _$checkboxAtom =
      Atom(name: 'AddTodoStoreBase.checkbox', context: context);

  @override
  bool get checkbox {
    _$checkboxAtom.reportRead();
    return super.checkbox;
  }

  @override
  set checkbox(bool value) {
    _$checkboxAtom.reportWrite(value, super.checkbox, () {
      super.checkbox = value;
    });
  }

  @override
  String toString() {
    return '''
data: ${data},
todoName: ${todoName},
observationTodo: ${observationTodo},
colorPicker: ${colorPicker},
errorNameTodo: ${errorNameTodo},
hasErroNameTodo: ${hasErroNameTodo},
checkbox: ${checkbox}
    ''';
  }
}
