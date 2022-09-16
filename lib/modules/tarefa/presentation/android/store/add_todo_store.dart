import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:tarefa/core/utils/utils.dart';
part 'add_todo_store.g.dart';

class AddTodoStore = AddTodoStoreBase with _$AddTodoStore;

abstract class AddTodoStoreBase with Store {
  @observable
  String data = "";
  @observable
  String todoName = "";
  @observable
  String observationTodo = "";
  @observable
  Color colorPicker = selectedColors[0];
  @observable
  String errorNameTodo = "";
  @observable
  bool hasErroNameTodo = false;
  @observable
  bool checkbox = false;
  Color tempColor = selectedColors[0];

  changeColor(Color color) {
    colorPicker = color;
  }

  changeTodoName(String todoName) {
    todoName = todoName;
  }

  changeObservation(String observation) {
    observationTodo = observation;
  }

  validadeNameTodo() {
    return;
  }

  validadeData() {
    return;
  }

  canSave() {
    if (todoName.isNotEmpty) {
      errorNameTodo = "";
      hasErroNameTodo = false;
      return true;
    }
    return false;
  }

  emptyFields() {
    hasErroNameTodo = false;
    errorNameTodo = "";
    if (todoName.isEmpty) {
      hasErroNameTodo = true;
      errorNameTodo = "O nome da tarefa não pode ficar em branco";
    }

    return errorNameTodo;
  }
}
