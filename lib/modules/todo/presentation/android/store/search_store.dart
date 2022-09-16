import 'package:mobx/mobx.dart';
import 'package:todo/core/utils/utils.dart';
import 'package:todo/modules/todo/domain/entity/todo_entity.dart';

part 'search_store.g.dart';

class SearchStore = SearchBase with _$SearchStore;

abstract class SearchBase with Store {
  @observable
  List<ToDo> todos = [];

  addToDo() {
    todos.add(ToDo(
        time: "8:30",
        data: '12/08/2022',
        todoName: 'Essa é uma tarefa Teste',
        observations: "Olá eu possuo uma observação",
        color: selectedColors[2],
        completed: false));

    todos.add(ToDo(
        time: "10:00",
        data: '30/08/2022',
        todoName: "Eu sou uma segunda Tarefa",
        observations: "",
        color: selectedColors[3],
        completed: false));
  }
}
