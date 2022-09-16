// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageStore on HomePageBase, Store {
  late final _$createNewNoteAtom =
      Atom(name: 'HomePageBase.createNewNote', context: context);

  @override
  bool get createNewNote {
    _$createNewNoteAtom.reportRead();
    return super.createNewNote;
  }

  @override
  set createNewNote(bool value) {
    _$createNewNoteAtom.reportWrite(value, super.createNewNote, () {
      super.createNewNote = value;
    });
  }

  late final _$tarefasAtom =
      Atom(name: 'HomePageBase.tarefas', context: context);

  @override
  List<ToDo> get tarefas {
    _$tarefasAtom.reportRead();
    return super.tarefas;
  }

  @override
  set tarefas(List<ToDo> value) {
    _$tarefasAtom.reportWrite(value, super.tarefas, () {
      super.tarefas = value;
    });
  }

  @override
  String toString() {
    return '''
createNewNote: ${createNewNote},
tarefas: ${tarefas}
    ''';
  }
}
